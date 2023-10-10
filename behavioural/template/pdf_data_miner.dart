part of 'data_miner.dart';

class PDFDataMiner extends DataMiner {
  @override
  File openFile(String path) {
    print('Opening PDF file: $path');
    return File(path);
  }

  @override
  String extractData(File file) {
    print('Extracting data from PDF file');
    return 'PDF data';
  }

  @override
  String parseData(String rawData) {
    print('Parsing data: $rawData');
    return 'Parsed $rawData';
  }

  @override
  void closeFile(File file) {
    print('Closing PDF file');
  }
}
