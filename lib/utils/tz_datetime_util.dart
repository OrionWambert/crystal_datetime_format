import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz_initializer;

class CrystalTzDateTimeUtil {
  CrystalTzDateTimeUtil._();

  static initialize() {
    tz_initializer.initializeTimeZones();
  }

  static from(DateTime dateTime, String timezone) {
    final detroit = CrystalTzDateTimeUtil._getLocation(timezone);
    return CrystalTzDateTimeUtil._getTzDateTime(dateTime, detroit);
  }

  static _getTzDateTime(DateTime dateTime, tz.Location detroit) {
    tz.TZDateTime.from(dateTime, detroit);
  }

  static _getLocation(String location) {
    tz.getLocation(location);
  }
}
