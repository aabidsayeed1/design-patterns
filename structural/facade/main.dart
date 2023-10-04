// ignore_for_file: unused_local_variable

import 'dart:io';

import 'video_conversion_facade.dart';

void main() {
  VideoConversionFacade converter = VideoConversionFacade();
  File mp4Video = converter.convertVideo('youtubevideo.ogg', 'mp4');

  // do other stuff
}
