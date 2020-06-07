import 'package:mobx/mobx.dart';
import 'package:skyscraper/app/shared/models/user.model.dart';
import 'package:skyscraper/app/shared/repositories/abstractions/iuser.repository.dart';

part 'home.viewmodel.g.dart';

class HomeViewModel = _HomeViewModelBase with _$HomeViewModel;

abstract class _HomeViewModelBase with Store {
  final IUserRepository _userRepository;
  _HomeViewModelBase(this._userRepository);

  @observable
  UserModel user;

  @action
  Future<UserModel> getUser() async {
    user = await _userRepository.getUser();
    return user;
  }
}
