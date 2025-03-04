// ╔═════════════════════════════════════════════════════════════════════════════════════════════════
// ║     demo_test.dart
// ╠═════════════════════════════════════════════════════════════════════════════════════════════════
// ║     Created: 04.03.2025
// ║
// ║     Copyright (c) 2025 James Dooley <james@dooley.ch>
// ║
// ║     History:
// ║     04.03.2025: Initial version
// ╚═════════════════════════════════════════════════════════════════════════════════════════════════

import 'package:colorize/colorize.dart';
import 'package:test/test.dart';
import 'package:intl/intl.dart' show DateFormat;

void main() {
 var formatter = DateFormat('yyyy-MM-dd HH:mm:ss');

 Colorize testString = Colorize('${formatter.format(DateTime.now())} [INFO] This is my string!');
 testString.bgBlack().green();

 print(testString);
}
