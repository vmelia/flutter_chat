import '../exports/contracts.dart';

class TextProcessorServiceImpl implements TextProcessorService {
  @override
  String process(String text) => text.split('').reversed.join();
}
