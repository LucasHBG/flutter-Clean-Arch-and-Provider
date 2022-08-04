import 'package:test_app/data/remote/network/api_endpoints.dart';
import 'package:test_app/data/remote/network/base_api_service.dart';
import 'package:test_app/data/remote/network/network_api_service.dart';
import 'package:test_app/models/users_list/users_list_model.dart';
import 'package:test_app/repositories/user_repository.dart';

class UserRepositoryImp implements UserRepository {
  final BaseApiService _baseApiService = NetworkApiService();

  @override
  Future<UsersListModel?> getUsersList() async {
    try {
      dynamic response =
          await _baseApiService.getResponse(ApiEndpoints().getUsers);

      print("If successfull: $response");

      //Parse the result into a object of type UsersListModel
      final jsonData = UsersListModel.fromJson(response);
      return jsonData;
    } catch (e) {
      print("[Exception] if fail: $e}");
      rethrow;
    }
  }
}
