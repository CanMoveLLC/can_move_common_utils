import 'dart:typed_data';

class FileUploadParam {
  final String path;
  final String? name;
  final Uint8List? bytes;

  FileUploadParam({required this.path, this.name, this.bytes});

  @override
  bool operator ==(covariant FileUploadParam other) {
    if (identical(this, other)) return true;

    return other.path == path && other.name == name && other.bytes == bytes;
  }

  @override
  int get hashCode => path.hashCode ^ name.hashCode ^ bytes.hashCode;

  @override
  String toString() =>
      'FileUploadParam(path: $path, name: $name, bytes: $bytes)';
}
