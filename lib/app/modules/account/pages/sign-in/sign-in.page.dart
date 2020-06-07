import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:skyscraper/app/modules/account/pages/sign-in/widgets/form.widget.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Sign In Page!'),
            FormWidget(),
            FlatButton(
              onPressed: () => {Modular.to.pushNamed('/account/signUp')},
              child: Text('Still don\'t have an account?'),
            )
          ],
        ),
      ),
    );
  }
}
