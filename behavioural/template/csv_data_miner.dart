part of 'data_miner.dart';

class CSVDataMiner extends DataMiner {
  @override
  File openFile(String path) {
    print('Opening CSV file: $path');
    return File(path);
  }

  @override
  String extractData(File file) {
    print('Extracting data from CSV file');
    return 'CSV data';
  }

  @override
  String parseData(String rawData) {
    print('Parsing data: $rawData');
    return 'Parsed $rawData';
  }

  @override
  void closeFile(File file) {
    print('Closing CSV file');
  }
}
