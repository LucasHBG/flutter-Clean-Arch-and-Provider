import 'package:flutter/foundation.dart';
import 'package:test_app/data/remote/network/api_endpoints.dart';
import 'package:test_app/data/remote/network/base_api_service.dart';
import 'package:test_app/data/remote/network/network_api_service.dart';
import 'package:test_app/models/users_list/users_list_model.dart';
import 'package:test_app/repositories/user_repository.dart';

class UserRepositoryImp implements UserRepository {
  final BaseApiService _baseApiService = NetworkApiService();

  /// Since we are getting a List of json objects from http, we should pass
  /// it as parameter at: [UsersListModel.fromJson({ 'data': <my list> })]
  /// in order to map it correctly.
  ///
  /// The built in `fromJson` expects a `Map<String, dynamic>` therefore we
  /// are passing it as `List<dynamic>`
  ///
  /// Source: https://github.com/rrousselGit/freezed/issues/173
  @override
  Future<UsersListModel?> getUsersList() async {
    try {
      dynamic jsonString =
          await _baseApiService.getResponse(ApiEndpoints().getUsers);

      debugPrint("[GET] If successfull: $jsonString");

      /// Here we're parsing the result (List of json Objects of type User)
      /// into a List<dynamic>
      final jsonResponse = UsersListModel.fromJson({'users': jsonString});
      return jsonResponse;
    } catch (e) {
      debugPrint("[GET Exception] on fail: $e}");
      rethrow;
    }
  }

  @override
  Future<String> deleteUserById(int id) async {
    try {
      dynamic jsonString = await _baseApiService
          .deleteResponse(ApiEndpoints().deleteUserById + id.toString());

      debugPrint("[DELETE] If successfull: $jsonString");

      return "User with id: $id was deleted successfully";
    } catch (e) {
      debugPrint("[DELETE Exception] on fail: $e");
      rethrow;
    }
  }
}
