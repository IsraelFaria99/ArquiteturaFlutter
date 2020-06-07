import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Sign Up Page!'),
            FlatButton(
              onPressed: () => {Modular.to.pop()},
              child: Text('Go back to Sign In'),
            )
          ],
        ),
      ),
    );
  }
}
