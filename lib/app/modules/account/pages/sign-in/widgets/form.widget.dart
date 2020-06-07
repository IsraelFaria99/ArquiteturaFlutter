import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:skyscraper/app/modules/account/pages/sign-in/sign-in.viewmodel.dart';

class FormWidget extends StatelessWidget {
  final viewModel = Modular.get<SignInViewModel>();
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Container(
        margin: EdgeInsets.all(20),
        child: Form(
          child: Column(
            children: <Widget>[
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(hintText: 'E-mail'),
              ),
              SizedBox(
                height: 50,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(hintText: 'Senha'),
              ),
              SizedBox(
                height: 50,
              ),
              FlatButton(
                onPressed: () {
                  viewModel.authenticateUser();
                },
                child: viewModel.isLoading
                    ? SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(
                          strokeWidth: 3,
                          valueColor: AlwaysStoppedAnimation(Colors.black),
                        ),
                      )
                    : Text('Entrar'),
                color: Colors.amber,
              )
            ],
          ),
        ),
      );
    });
  }
}
