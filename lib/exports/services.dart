import 'package:get_it/get_it.dart';

import 'contracts.dart';
import 'services.dart';

export '../services/logger_service_impl.dart';
export '../services/permission_service_impl.dart';
export '../services/speech_to_text_service_impl.dart';
export '../services/text_changed_service_impl.dart';
export '../services/text_processor_service_impl.dart';
export '../services/text_to_speech_service_impl.dart';

void configureServices() {
  GetIt.I.registerSingleton<LoggerService>(LoggerServiceImpl());
  GetIt.I.registerSingleton<TextChangedService>(TextChangedServiceImpl());
  GetIt.I.registerSingleton<PermissionService>(PermissionServiceImpl(GetIt.I()));
  GetIt.I.registerSingleton<SpeechToTextService>(SpeechToTextServiceImpl(GetIt.I()));
  GetIt.I.registerSingleton<TextProcessorService>(TextProcessorServiceImpl());
  GetIt.I.registerSingleton<TextToSpeechService>(TextToSpeechServiceImpl());
}
