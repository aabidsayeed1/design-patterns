import 'dart:io';

part 'csv_data_miner.dart';
part 'doc_data_miner.dart';
part 'pdf_data_miner.dart';

abstract class DataMiner {
  void mine(String path) {
    File file = openFile(path);
    String rawData = extractData(file);
    String data = parseData(rawData);
    String analysis = analyzeData(data);
    sendReport(analysis);
    closeFile(file);
  }

  File openFile(String path);
  String extractData(File file);
  String parseData(String rawData);
  void closeFile(File file);

  String analyzeData(String data) {
    print('Analyzing data...');
    return 'Amazing Data Analysis on $data';
  }

  void sendReport(String analysis) {
    print('Sending data mining report: $analysis');
  }
}
