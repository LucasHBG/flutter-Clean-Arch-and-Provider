import 'package:test_app/data/remote/response/status.dart';

///Class responsible to manage and inform current `status`
///from Api's related tasks.
///
///Should be used mainly on `[ViewModel]` classes to handle
/// **business logic** and therefore help the `[View]`
class ApiResponse<T> {
  Status? status;
  T? data;
  String? message;

  ApiResponse({this.status, this.data, this.message});

  ApiResponse.loading() : status = Status.loading;

  ApiResponse.completed({this.data}) : status = Status.completed;

  ApiResponse.error({this.message}) : status = Status.error;

  @override
  String toString() {
    // Custom toString response text
    return "Status: $status \n Message: $message \n Data: $data";
  }
}
