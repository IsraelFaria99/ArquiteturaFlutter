import 'package:skyscraper/app/shared/models/user.model.dart';
import 'package:skyscraper/app/shared/repositories/abstractions/iuser.repository.dart';

class UserRepository implements IUserRepository {
  @override
  Future createUser() {
    //Cadastrar usuario na api
    throw UnimplementedError();
  }

  @override
  Future<UserModel> getUser() async {
    //Buscar usuario da api
    UserModel user;
    await Future.delayed(Duration(seconds: 2), () {
      user = UserModel(email: "teste@teste.com", name: "Nome de Teste", active: true);
    });
    return user;
  }
}
