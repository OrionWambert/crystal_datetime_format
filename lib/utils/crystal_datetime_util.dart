import 'package:crystal_date_time_format/extension/crystal_on_string.dart';
import 'package:crystal_date_time_format/locale/crystal_local.dart';
import 'package:crystal_date_time_format/locale/english.dart';

class CrystalDateTimeUtil {
  CrystalDateTimeUtil._();

  static convertToHour12(String fullHour,
      {AbstractCrystalLocale? locale = const CrystalEnglishLocale()}) {
    int? hour;
    String? suffix;

    int currentHour = int.parse(fullHour.split(":")[0]);
    int minute = int.parse(fullHour.split(":")[2]);

    if (currentHour == 24 || currentHour == 0) {
      suffix = locale!.am;
    }

    if (currentHour < 12) {
      hour = currentHour;
      suffix = locale!.pm;
    } else if (currentHour >= 12) {
      hour = currentHour - 12;
      suffix = locale!.pm;
    }
    return "$hour:$minute $suffix";
  }

  static convertHourTo24(String fullHour,
      {AbstractCrystalLocale locale = const CrystalEnglishLocale()}) {
    int? hour;
    int currentHour = int.parse(fullHour.split(":")[0]);
    int currentMinute = int.parse(fullHour.split(":")[1]);

    if (fullHour.endsWithIgnoreCase(locale.am) && currentHour == 12) {
      hour = 0;
    } else if (fullHour.endsWithIgnoreCase(locale.pm) && currentHour != 12) {
      hour = currentHour + 12;
    }
    return "$hour:$currentMinute";
  }
}
