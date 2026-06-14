import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';
import '../exports/contracts.dart';

class SpeechToTextServiceImpl implements SpeechToTextService {
  SpeechToTextServiceImpl(this.loggerService) : _speechToText = SpeechToText();
  final SpeechToText _speechToText;
  final LoggerService loggerService;
  late OnTextReceived _onTextReceived;

  @override
  Future<bool> initialize({required OnTextReceived onTextReceived}) async {
    _onTextReceived = onTextReceived;
    return _speechToText.initialize(
      onStatus: (status) => loggerService.log('SpeechToText status: $status'),
      onError: (error) => loggerService.log('SpeechToText error: $error'),
    );
  }

  @override
  Future<void> listen() async => _speechToText.listen(onResult: _onSpeechResult);

  @override
  Future<void> stop() async => _speechToText.stop();

  void _onSpeechResult(SpeechRecognitionResult result) =>
      _onTextReceived(text: result.recognizedWords, confidence: result.confidence);
}
