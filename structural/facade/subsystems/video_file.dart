part of 'subsystems.dart';

class VideoFile {
  String name;
  String codecType;

  VideoFile({required this.name})
      : codecType = name.substring(name.indexOf('.') + 1);
}
