import 'dart:io';

import 'package:adventures_in_tech_world/middleware/app_middleware.dart';
import 'package:adventures_in_tech_world/models/app/app_state.dart';
import 'package:adventures_in_tech_world/reducers/app_reducer.dart';
import 'package:adventures_in_tech_world/services/auth_service.dart';
import 'package:adventures_in_tech_world/services/platform_service.dart';
import 'package:adventures_in_tech_world/widgets/adventures_in_app.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:redux_remote_devtools/redux_remote_devtools.dart';

void main() async {
  final remoteDevtools = RemoteDevToolsMiddleware('localhost:8000');

  /// Create services
  final authService = AuthService();
  final platformService = PlatformService();

  /// Create the redux store
  final store =
      Store<AppState>(appReducer, initialState: AppState.init(), middleware: [
    remoteDevtools,
    ...createAppMiddleware(
        authService: authService, platformService: platformService)
  ]);

  // give RDT access to the store
  remoteDevtools.store = store;

  // try to connect and print out any exception thrown
  try {
    await remoteDevtools.connect();
  } on SocketException catch (e) {
    print(e);
  }

  runApp(AdventuresInApp(store));
}
