import 'package:mobx/mobx.dart';

part 'sign-in.viewmodel.g.dart';

class SignInViewModel = _SignInViewModelBase with _$SignInViewModel;

abstract class _SignInViewModelBase with Store {
  @observable
  bool isLoading = false;

  @action
  Future<bool> authenticateUser() async {
    isLoading = true;
    await Future.delayed(Duration(seconds: 3), () {
      isLoading = false;
    });
    return false;
  }
}
