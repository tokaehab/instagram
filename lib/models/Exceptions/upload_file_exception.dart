class UploadFileException with Exception {
  UploadFileException(this._error);
  final String _error;

  String get error => _error;
  String toString() => 'UploadFileException';
}
