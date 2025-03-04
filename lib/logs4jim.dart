// ╔═════════════════════════════════════════════════════════════════════════════════════════════════
// ║     logs4jim.dart
// ╠═════════════════════════════════════════════════════════════════════════════════════════════════
// ║     Created: 03.03.2025
// ║
// ║     Copyright (c) 2025 James Dooley <james@dooley.ch>
// ║
// ║     History:
// ║     03.03.2025: Initial version
// ╚═════════════════════════════════════════════════════════════════════════════════════════════════

/// This library supports simple application logging to the console, files or a
/// database
library;

export 'src/logging_level.dart' show LoggingLevel;
export 'src/log_record.dart' show LogRecord;
export 'src/logging_engine.dart' show logFatalMessage, logErrorMessage, logWarningMessage,
                                        logInformationMessage, setLoggingLevel, addLoggingAppender;
