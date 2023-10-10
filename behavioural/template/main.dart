import 'data_miner.dart';

void main() {
  String pdfFilePath = 'example.pdf';
  String csvFilePath = 'example.csv';
  String docFilePath = 'example.doc';

  DataMiner pdfMiner = PDFDataMiner();
  DataMiner csvMiner = CSVDataMiner();
  DataMiner docMiner = DocDataMiner();

  print('Mine data from PDF file\n');
  pdfMiner.mine(pdfFilePath);

  print('\n- - - - - - - -\n');

  print('Mine data from CSV file\n');
  csvMiner.mine(csvFilePath);

  print('\n- - - - - - - -\n');

  print('Mine data from Doc file\n');
  docMiner.mine(docFilePath);
}
