abstract class TextToSpeechService {
  Future<bool> initialize();
  Future<dynamic> speak(String text);
}
