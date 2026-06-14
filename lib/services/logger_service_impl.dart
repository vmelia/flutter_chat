import 'package:logger/logger.dart';
import '../exports/contracts.dart';

class LoggerServiceImpl implements LoggerService {
  LoggerServiceImpl() : _logger = Logger(printer: PrettyPrinter());
  final Logger _logger;

  @override
  void log(String message) => _logger.d('******** $message');
}
