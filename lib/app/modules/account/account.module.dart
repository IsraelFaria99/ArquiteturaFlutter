import 'package:flutter_modular/flutter_modular.dart';
import 'package:skyscraper/app/modules/account/pages/sign-in/sign-in.page.dart';
import 'package:skyscraper/app/modules/account/pages/sign-in/sign-in.viewmodel.dart';
import 'package:skyscraper/app/modules/account/pages/sign-up/sign-up.page.dart';

class AccountModule extends ChildModule{
  @override
  List<Bind> get binds => [
    Bind((i) => SignInViewModel())
  ];

  @override
  List<Router> get routers => [
    Router('/', child: (context, args) => SignInPage(), transition: TransitionType.downToUp),
    Router('/signUp', child: (context, args) => SignUpPage(), transition: TransitionType.downToUp,)
  ];
}