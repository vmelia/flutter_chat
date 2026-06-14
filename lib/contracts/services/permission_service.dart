abstract class PermissionService {
  Future<bool> initialize();
  Future<bool> getMicrophonePermissionStatus();
  Future<bool> requestMicrophonePermission();
}
