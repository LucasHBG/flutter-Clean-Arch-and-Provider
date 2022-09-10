import '/models/users_list/users_list_model.dart';

///Since there is no `Interface` type on Dart, the only
///way to implement a class as sush is by setting it as
///an [abstract] type of class.
///
///Source: https://stackoverflow.com/a/20791334/9816802
abstract class UserRepository {
  Future<UsersListModel?> getUsersList();

  Future<String> deleteUserById(int id);
}
