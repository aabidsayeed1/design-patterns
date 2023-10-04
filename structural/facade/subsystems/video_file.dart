part of 'subsystems.dart';

class VideoFile {
  String name;
  String codecType;

  VideoFile(this.name) : codecType = name.substring(name.indexOf('.') + 1);
}
