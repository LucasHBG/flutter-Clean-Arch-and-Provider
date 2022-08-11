import 'package:flutter/foundation.dart';
import 'package:test_app/data/remote/response/api_response.dart';
import 'package:test_app/models/users_list/users_list_model.dart';
import 'package:test_app/repositories/user_repository_imp.dart';

class UsersListVM extends ChangeNotifier {
  final _userRepository = UserRepositoryImp();

  ApiResponse<UsersListModel> usersList = ApiResponse.loading();

  void _setUsersList(ApiResponse<UsersListModel> response) {
    debugPrint("Entered setUsersObj :: $response");
    usersList = response;
    notifyListeners();
  }

  Future<void> fetchUsers() async {
    _setUsersList(ApiResponse.loading());
    _userRepository
        .getUsersList()
        .then(
            (value) => _setUsersList(ApiResponse.completed(data: value)))
        .onError((error, stackTrace) =>
            _setUsersList(ApiResponse.error(message: error.toString())));
  }
}
