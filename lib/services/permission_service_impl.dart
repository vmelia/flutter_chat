import 'package:permission_handler/permission_handler.dart';
import '../exports/contracts.dart';

class PermissionServiceImpl implements PermissionService {
  PermissionServiceImpl(this.loggerService);
  final LoggerService loggerService;

  @override
  Future<bool> getMicrophonePermissionStatus() async => (await Permission.microphone.status).isGranted;

  @override
  Future<bool> requestMicrophonePermission() async => (await Permission.microphone.request()).isGranted;

  @override
  Future<bool> initialize() async {
    final microphonePermissionStatus = await getMicrophonePermissionStatus();
    loggerService.log('Microphone permission status: $microphonePermissionStatus');
    if (microphonePermissionStatus) {
      return true;
    }

    final microphonePermissionRequestStatus = await requestMicrophonePermission();
    loggerService.log('Microphone permission request status: $microphonePermissionRequestStatus');
    return microphonePermissionRequestStatus;
  }
}
