import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:test_app/data/remote/app_exception.dart';
import 'package:test_app/data/remote/network/base_api_service.dart';

//TODO: add all requests type like POST, PUT and DELETE
//Generalistic class to handle all Responses from app requests
class NetworkApiService extends BaseApiService {
  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw BadRequestException(response.toString());
      case 401:
      case 403:
        throw UnauthorizedException(response.body.toString());
      case 404:
        throw UnauthorizedException(response.body.toString());
      case 500:
      default:
        throw FetchDataException(
            'Error occured while communicating with server!\nStatus code: ${response.statusCode}');
    }
  }

  @override
  Future getResponse(String url) async {
    dynamic responseJson;

    try {
      final response = await http.get(Uri.parse(baseUrl + url));
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }
    return responseJson;
  }

  @override
  Future deleteResponse(String url) async {
    dynamic responseJson;

    try {
      final response = await http.delete(Uri.parse(baseUrl + url));
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }
    return responseJson;
  }
}
