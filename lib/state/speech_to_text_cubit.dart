import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../exports/contracts.dart';

class SpeechToTextState extends Equatable {
  const SpeechToTextState({this.initialized = false, this.listening = false, this.text = ''});
  final bool initialized;
  final bool listening;
  final String text;

  @override
  List<Object?> get props => [initialized, listening, text];
}

class SpeechToTextCubit extends Cubit<SpeechToTextState> {
  SpeechToTextCubit(
    this.loggerService,
    this.permissionService,
    this.speechToTextService,
    this.textToSpeechService,
  ) : super(const SpeechToTextState());
  final LoggerService loggerService;
  final PermissionService permissionService;
  final SpeechToTextService speechToTextService;
  final TextToSpeechService textToSpeechService;

  Future<void> initialize() async {
    loggerService.log('Initializing SpeechToTextCubit');

    final permissionServiceStatus = await permissionService.initialize();
    loggerService.log('Permission service status: $permissionServiceStatus');

    final initialized = await speechToTextService.initialize(onTextReceived: _onTextReceived);
    loggerService.log('speechToTextService.initialize() returned $initialized');

    await textToSpeechService.initialize();

    emit(SpeechToTextState(initialized: initialized));
  }

  Future<void> toggleListening() async {
    final isListening = !state.listening;
    if (isListening) {
      await speechToTextService.listen();
    } else {
      await speechToTextService.stop();
    }

    emit(SpeechToTextState(initialized: state.initialized, listening: isListening));
  }

  Future<void> _onTextReceived({required double confidence, required String text}) async {
    emit(SpeechToTextState(initialized: state.initialized, text: text));

    if (confidence > 0.0) {
      // TODO(Vince): Update TextProcessorService.
    }
  }
}
