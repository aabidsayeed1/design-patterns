part of 'data_miner.dart';

class DocDataMiner extends DataMiner {
  @override
  File openFile(String path) {
    print('Opening Doc file: $path');
    return File(path);
  }

  @override
  String extractData(File file) {
    print('Extracting data from Doc file');
    return 'Doc data';
  }

  @override
  String parseData(String rawData) {
    print('Parsing data: $rawData');
    return 'Parsed $rawData';
  }

  @override
  void closeFile(File file) {
    print('Closing Doc file');
  }
}
