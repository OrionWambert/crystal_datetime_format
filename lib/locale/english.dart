import 'package:crystal_date_time_format/locale/crystal_local.dart';

class CrystalEnglishLocale implements AbstractCrystalLocale {
  const CrystalEnglishLocale();

  @override
  String get am => "AM";

  @override
  List<String> get dayLong => [
        'Monday',
        'Tuesday',
        'Wednesday',
        'Thursday',
        'Friday',
        'Saturday',
        'Sunday'
      ];

  @override
  List<String> get dayShort =>
      ['Mon', 'Tue', 'Wed', 'Thur', 'Fri', 'Sat', 'Sun'];

  @override
  List<String> get monthLong => [
        'January',
        'February',
        'March',
        'April',
        'May',
        'June',
        'July',
        'August',
        'September',
        'October',
        'November',
        'December'
      ];

  @override
  List<String> get monthShort => [
        'Jan',
        'Feb',
        'Mar',
        'Apr',
        'May',
        'Jun',
        'Jul',
        'Aug',
        'Sep',
        'Oct',
        'Nov',
        'Dec'
      ];

  @override
  String get pm => "PM";
}
