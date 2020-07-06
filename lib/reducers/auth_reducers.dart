import 'package:adventures_in_tech_world/actions/auth/store_auth_state.dart';
import 'package:adventures_in_tech_world/actions/auth/store_auth_step.dart';
import 'package:adventures_in_tech_world/actions/auth/store_auth_token.dart';
import 'package:adventures_in_tech_world/models/app/app_state.dart';
import 'package:redux/redux.dart';

/// Reducers specify how the application's state changes in response to actions
/// sent to the store.
///
/// Each reducer returns a new [AppState].
final authReducers = <AppState Function(AppState, dynamic)>[
  TypedReducer<AppState, StoreAuthState>(_storeAuthState),
  TypedReducer<AppState, StoreAuthStep>(_storeAuthStep),
  TypedReducer<AppState, StoreAuthToken>(_storeAuthToken),
];

AppState _storeAuthState(AppState state, StoreAuthState action) {
  return state.rebuild((b) => b..authState = action.state);
}

AppState _storeAuthStep(AppState state, StoreAuthStep action) {
  return state.rebuild((b) => b..authStep = action.step);
}

AppState _storeAuthToken(AppState state, StoreAuthToken action) {
  return state.rebuild((b) => b..authToken = action.token);
}
