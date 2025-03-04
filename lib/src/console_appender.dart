// ╔═════════════════════════════════════════════════════════════════════════════════════════════════
// ║     console_appender.dart
// ╠═════════════════════════════════════════════════════════════════════════════════════════════════
// ║     Created: 04.03.2025
// ║
// ║     Copyright (c) 2025 James Dooley <james@dooley.ch>
// ║
// ║     History:
// ║     04.03.2025: Initial version
// ╚═════════════════════════════════════════════════════════════════════════════════════════════════

// ignore_for_file: use_super_parameters

import 'package:colorize/colorize.dart' show Colorize;
import 'package:intl/intl.dart' show DateFormat;
import 'appender_base.dart';
import 'log_record.dart';
import 'logging_level.dart';

class ConsoleAppender extends AppenderBase {
  @override
  Future<void> call({required LogRecord record}) async {
    if (!levels.contains(record.level)) { return; }

    var formatter = DateFormat('yyyy-MM-dd HH:mm:ss');
    var levelMsg = AppenderBase.levelText(level: record.level);

    Colorize msg;
    if (record.level == LoggingLevel.BREAK) {
      msg = Colorize(AppenderBase.breakMessage());
    } else {
      msg = Colorize(
          '${formatter.format(record.loggedOn)} [$levelMsg] ${record.message}');
    }

    msg.bgBlack();

    switch(record.level) {
      case LoggingLevel.FATAL:
        msg.bold().dark().red();
        break;
      case LoggingLevel.ERROR:
        msg.red();
        break;
      case LoggingLevel.WARN:
        msg.yellow();
        break;
      case LoggingLevel.INFO:
        msg.blue();
      case LoggingLevel.BREAK:
        msg.magenta();
    }

    print(msg);
  }

  ConsoleAppender({required LoggingLevel level}) : super(level: level);
}