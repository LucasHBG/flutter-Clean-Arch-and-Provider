import 'dart:convert';
import 'dart:io';

import 'package:test_app/models/user/users_list.dart';
import 'package:test_app/repositories/api_status.dart';
import 'package:test_app/utils/constants.dart';
import 'package:http/http.dart' as http;

class UserService {
  //! to be changed
  static Future<Object> getUsers() async {
    try {
      final response = await http
          .get(Uri.parse("https://jsonplaceholder.typicode.com/users"));

      if (success == response.statusCode) {
        final List<UserModel> data = json.decode(response.body);
        return Success(code: response.statusCode, response: data);
      }
      return Failure(
          code: userInvalidResponse, errorResponse: 'Invalid Response!');
    } on HttpException {
      return Failure(code: noInternet, errorResponse: "No Internet Connection");
    } on SocketException {
      return Failure(code: noInternet, errorResponse: "No Internet Connection");
    } on FormatException {
      return Failure(code: invalidFormat, errorResponse: "Invalid Format");
    } catch (e) {
      return Failure(code: unknownError, errorResponse: 'Unknown Error');
    }
  }
}
