import 'dart:typed_data';

class FileUploadParam {
  final String path;
  final String? name;
  final Uint8List? bytes;

  FileUploadParam({required this.path, this.name, this.bytes});
}
