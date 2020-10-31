import 'package:adventures_in_tech_world/actions/auth/sign_in_with_google.dart';
import 'package:adventures_in_tech_world/extensions/build_context_extensions.dart';
import 'package:flutter/material.dart';

class SignInWithGitHubButton extends StatelessWidget {
  const SignInWithGitHubButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        color: Theme.of(context).primaryColor,
        child: Row(mainAxisSize: MainAxisSize.min, children: [
          Text('Sign in with GitHub', style: TextStyle(color: Colors.white)),
          SizedBox(width: 10),
          Image.asset('assets/GitHub-Mark-Light-64px.png',
              width: 20, height: 20, fit: BoxFit.cover),
        ]),
        onPressed: () => context.dispatch(SignInWithGoogle()),
      ),
    );
  }
}