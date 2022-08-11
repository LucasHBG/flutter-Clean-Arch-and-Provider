abstract class BaseApiService {
  ///! [INFO]: Temporary _fake api_ URL
  final String baseUrl = "https://jsonplaceholder.typicode.com";

  ///Method to be implemented by extended classes
  Future<dynamic> getResponse(String url);

  Future<dynamic> deleteResponse(String url);
}
