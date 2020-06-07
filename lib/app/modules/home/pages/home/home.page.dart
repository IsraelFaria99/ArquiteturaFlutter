import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:skyscraper/app/modules/home/pages/home/home.viewmodel.dart';

class HomePage extends StatelessWidget {
  final viewModel = Modular.get<HomeViewModel>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await viewModel.getUser();
        },
        child: Icon(
          Icons.search,
        ),
      ),
      body: Observer(builder: (_) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Implementando uma arquitetura robusta.'),
              FlatButton(
                onPressed: () => {Modular.to.pushNamed('/account/')},
                child: Text('Entrar!'),
              ),
              viewModel.user != null
                  ? Column(
                      children: <Widget>[
                        SizedBox(
                          height: 20,
                        ),
                        Text('Dados do usuario'),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Nome: ${viewModel.user.name}'),
                        Text('E-mail: ${viewModel.user.email}'),
                      ],
                    )
                  : Container(),
            ],
          ),
        );
      }),
    );
  }
}
