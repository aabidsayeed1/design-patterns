part of 'subsystems.dart';

abstract class Codec {}

class MPEG4CompressionCodec implements Codec {
  String type = 'mp4';
}

class OggCompressionCodec implements Codec {
  String type = 'ogg';
}

class CodecFactory {
  static Codec extract(VideoFile file) {
    String type = file.codecType;
    if (type == 'mp4') {
      print('CodecFactory: extracting mpeg audio...');
      return MPEG4CompressionCodec();
    } else {
      print('CodecFactory: extracting ogg audio...');
      return OggCompressionCodec();
    }
  }
}
