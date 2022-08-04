class AppException implements Exception {
  final _prefix;
  final _message;

  AppException([this._prefix, this._message]);

  @override
  String toString() {
    return "$_prefix$_message";
  }
}

// Here you can prepare your Application to
// handle all desired request with specific strategies

class FetchDataException extends AppException {
  FetchDataException([String? message])
      : super("Error During Communication: ", message);
}

class BadRequestException extends AppException {
  BadRequestException([message]) : super("Invalid Request: ", message);
}

class UnauthorizedException extends AppException {
  UnauthorizedException([message]) : super("Unauthorized Request: ", message);
}

class InvalidInputException extends AppException {
  InvalidInputException([String? message]) : super("Invalid Input: ", message);
}
