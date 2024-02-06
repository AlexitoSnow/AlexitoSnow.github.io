import 'package:intl/intl.dart';

String dateFormatter (DateTime date) => DateFormat(DateFormat.YEAR_NUM_MONTH_DAY).format(date);

bool isPhone = false;