abstract class Error {
  final String error;
  Error(this.error);
}

class ServerError extends Error {
  ServerError(super.error);
}
