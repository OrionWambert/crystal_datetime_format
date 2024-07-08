import 'package:crystal_date_time_format/locale/crystal_local.dart';

class CrystalGermanLocale extends AbstractCrystalLocale {
  @override
  String get am => "vormittags";

  @override
  List<String> get dayLong => [
        'Montag',
        'Dienstag',
        'Mittwoch',
        'Donnerstag',
        'Freitag',
        'Samstag',
        'Sonntag'
      ];

  @override
  List<String> get dayShort => ['Mo', 'Di', 'Mi', 'Do', 'Fr', 'Sa', 'So'];

  @override
  List<String> get monthLong => [
        'Januar',
        'Februar',
        'März',
        'April',
        'Mai',
        'Juni',
        'Juli',
        'August',
        'September',
        'Oktober',
        'November',
        'Dezember'
      ];

  @override
  List<String> get monthShort => [
        'Jan.',
        'Feb.',
        'März',
        'Apr.',
        'Mai',
        'Jun.',
        'Jul.',
        'Aug.',
        'Sep.',
        'Okt.',
        'Nov.',
        'Dez.'
      ];

  @override
  String get pm => "nachmittags";
}
