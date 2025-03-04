// ╔═════════════════════════════════════════════════════════════════════════════════════════════════
// ║     appender_base.dart
// ╠═════════════════════════════════════════════════════════════════════════════════════════════════
// ║     Created: 03.03.2025
// ║
// ║     Copyright (c) 2025 James Dooley <james@dooley.ch>
// ║
// ║     History:
// ║     03.03.2025: Initial version
// ╚═════════════════════════════════════════════════════════════════════════════════════════════════

import 'package:meta/meta.dart' show protected;
import 'logging_level.dart' show LoggingLevel, getLoggingLevelCollection;
import 'log_record.dart' show LogRecord;

/// The base class for all log appenders
abstract class AppenderBase {
  late final List<LoggingLevel> levels;

  /// Returns a text representation of the logging level
  @protected
  static String levelText({required LoggingLevel level}) {
    switch (level) {
      case LoggingLevel.FATAL:
        return 'FATAL';
      case LoggingLevel.ERROR:
        return 'ERROR';
      case LoggingLevel.WARN:
        return 'WARN ';
      case LoggingLevel.INFO:
        return 'INFO ';
      case LoggingLevel.BREAK:
        return '';
    }
  }

  static String breakMessage() => '-' * 80;

  /// Logs a message to the appender
  Future<void> call({required LogRecord record});

  AppenderBase({required LoggingLevel level}) : levels = getLoggingLevelCollection(current: level);
}
