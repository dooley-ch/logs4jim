// ╔═════════════════════════════════════════════════════════════════════════════════════════════════
// ║     logging_engine.dart
// ╠═════════════════════════════════════════════════════════════════════════════════════════════════
// ║     Created: 03.03.2025
// ║
// ║     Copyright (c) 2025 James Dooley <james@dooley.ch>
// ║
// ║     History:
// ║     03.03.2025: Initial version
// ╚═════════════════════════════════════════════════════════════════════════════════════════════════

import 'logging_level.dart';
import 'appender_base.dart';

Future<void> logFatalMessage ({required String message, String extraData = ''}) async {
}

Future<void> logErrorMessage ({required String message, String extraData = ''}) async {
}

Future<void> logWarningMessage ({required String message, String extraData = ''}) async {
}

Future<void> logInformationMessage ({required String message, String extraData = ''}) async {
}

void logAppStartUp () {
}

void logAppShutDown () {
}

void setLoggingLevel({required LoggingLevel level }) {
}

void addLoggingAppender({required AppenderBase appender}) {
}