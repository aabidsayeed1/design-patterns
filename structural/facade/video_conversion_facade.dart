import 'dart:io';

import 'subsystems/subsystems.dart';

class VideoConversionFacade {
  File convertVideo(String fileName, String format) {
    print('VideoConversionFacade: conversion started.');

    VideoFile file = VideoFile(fileName);

    Codec sourceCodec = CodecFactory.extract(file);

    Codec destinationCodec;
    format == 'mp4'
        ? destinationCodec = MPEG4CompressionCodec()
        : destinationCodec = OggCompressionCodec();

    VideoFile buffer = BitrateReader.read(file, sourceCodec);

    VideoFile intermediateResult =
        BitrateReader.convert(buffer, destinationCodec);

    File result = AudioMixer().fix(intermediateResult);

    print('VideoConversionFacade: conversion completed.');

    return result;
  }
}
