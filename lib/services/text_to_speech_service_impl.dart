import 'package:flutter_tts/flutter_tts.dart';

import '../exports/contracts.dart';

class TextToSpeechServiceImpl implements TextToSpeechService {
  late FlutterTts _textToSpeech;

  @override
  Future<bool> initialize() {
    _textToSpeech = FlutterTts();
    return Future.value(true);
  }

  @override
  Future<dynamic> speak(String text) async => _textToSpeech.speak(text);
}
