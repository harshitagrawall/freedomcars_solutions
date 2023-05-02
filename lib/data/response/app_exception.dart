class AppExceptions implements Exception {
  final _message;
  final _prefix;

  AppExceptions([this._message, this._prefix]);

  String toString() {
    return '$_message$_prefix';
  }
}

//No response from server after 10 seconds

class FetchDataException extends AppExceptions {
  FetchDataException([String? message])
      : super(message, 'Error During Communication');
}

//No Internet Provided
class BadRequestException extends AppExceptions {
  BadRequestException([String? message])
      : super(message, 'No Internet Connection');
}

// Unauthorized User made request
class UnauthorizedEception extends AppExceptions {
  UnauthorizedEception([String? message])
      : super(message, 'Unauthorized Request');
}

// Unauthorized Person
class InvalidInputException extends AppExceptions {
  InvalidInputException([String? message]) : super(message, 'Invalid Request');
}

// Internal Server Error
class InternalServerException extends AppExceptions {
  InternalServerException([String? message]) : super(message, 'Server Error');
}

// Client Side Exception
class ClientSideException extends AppExceptions {
  ClientSideException([String? message]) : super(message, 'Server Error');
}
