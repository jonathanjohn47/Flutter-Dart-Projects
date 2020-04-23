import 'package:intl/intl.dart';

var now = DateTime.now();
var formatter = new DateFormat("dd-MMM-yyyy");
print(formatter.format(now));
