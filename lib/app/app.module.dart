import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:skyscraper/app/app.widget.dart';
import 'package:skyscraper/app/modules/account/account.module.dart';
import 'package:skyscraper/app/modules/home/home.module.dart';
import 'package:skyscraper/app/shared/repositories/abstractions/iuser.repository.dart';
import 'package:skyscraper/app/shared/repositories/implementations/user.repository.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
    Bind<IUserRepository>((i) => UserRepository())
  ];

  @override
  Widget get bootstrap => AppWidget();

  @override
  List<Router> get routers => [
        Router('/', module: HomeModule()),
        Router('/account', module: AccountModule()),
      ];
}
