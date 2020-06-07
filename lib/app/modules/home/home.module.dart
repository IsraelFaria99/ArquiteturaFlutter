import 'package:flutter_modular/flutter_modular.dart';
import 'package:skyscraper/app/modules/home/pages/home/home.page.dart';
import 'package:skyscraper/app/modules/home/pages/home/home.viewmodel.dart';
import 'package:skyscraper/app/shared/repositories/abstractions/iuser.repository.dart';
import 'package:skyscraper/app/shared/repositories/implementations/user.repository.dart';

class HomeModule extends ChildModule{
  @override
  List<Bind> get binds => [
    Bind((i) => HomeViewModel(i.get())),
  ];

  @override
  List<Router> get routers => [
    Router('/', child: (context, args) => HomePage())
  ];
}