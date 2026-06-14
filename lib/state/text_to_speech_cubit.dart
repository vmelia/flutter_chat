import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../exports/contracts.dart';

class TextToSpeechState extends Equatable {
  const TextToSpeechState({this.text = ''});
  final String text;

  @override
  List<Object?> get props => [text];
}

class TextToSpeechCubit extends Cubit<TextToSpeechState> {
  TextToSpeechCubit(
    this.loggerService,
    this.textToSpeechService,
  ) : super(const TextToSpeechState());
  final LoggerService loggerService;
  final TextToSpeechService textToSpeechService;

  Future<void> initialize() async {
    loggerService.log('Initializing TextToSpeechCubit');

    // TODO(Vince): Subscribe to TextProcessorService
  }

  Future<void> play(String text) => textToSpeechService.speak(text);
}
