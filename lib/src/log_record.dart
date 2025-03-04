// ╔═════════════════════════════════════════════════════════════════════════════════════════════════
// ║     log_record.dart
// ╠═════════════════════════════════════════════════════════════════════════════════════════════════
// ║     Created: 03.03.2025
// ║
// ║     Copyright (c) 2025 James Dooley <james@dooley.ch>
// ║
// ║     History:
// ║     03.03.2025: Initial version
// ╚═════════════════════════════════════════════════════════════════════════════════════════════════

import 'logging_level.dart';

/// Represents a simple logging message that can be written to a log appender
class LogRecord {
  late final DateTime _loggedOn;
  late final LoggingLevel _level;
  late String _message;
  late String _extra;

  /// Returns the date and time the message was logged
  DateTime get loggedOn => _loggedOn;

  /// Returns the level of the message being logged
  LoggingLevel get level => _level;

  /// Returns the message being logged
  String get message => _message;

  /// Returns any additional data relating to the message being logged
  String get extra => _extra;
}