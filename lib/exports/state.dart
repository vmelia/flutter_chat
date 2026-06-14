import 'package:get_it/get_it.dart';
import 'state.dart';


export '../state/speech_to_text_cubit.dart';
export '../state/text_to_speech_cubit.dart';

void configureState() {
  GetIt.I.registerSingleton<SpeechToTextCubit>(
      SpeechToTextCubit(GetIt.I(), GetIt.I(), GetIt.I(), GetIt.I()));
  GetIt.I.registerSingleton<TextToSpeechCubit>(TextToSpeechCubit(GetIt.I(), GetIt.I()));
}
