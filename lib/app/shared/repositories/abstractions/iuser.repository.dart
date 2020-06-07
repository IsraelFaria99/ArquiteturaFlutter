import 'package:skyscraper/app/shared/models/user.model.dart';

abstract class IUserRepository{
  Future<UserModel> getUser();
  Future createUser();
}