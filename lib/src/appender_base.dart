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

import 'log_record.dart' show LogRecord;

/// The base class for all log appenders
abstract class AppenderBase {
  void call({required LogRecord record});
}
