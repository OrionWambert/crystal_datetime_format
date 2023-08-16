import 'package:date_time_format/locale/crystal_local.dart';

class CrystalTurkishLocale implements AbstractCrystalLocale {
  @override
  String get am => "ÖÖ";

  @override
  List<String> get dayLong => [
        'Pazartesi',
        'Salı',
        'Çarşamba',
        'Perşembe',
        'Cuma',
        'Cumartesi',
        'Pazar'
      ];

  @override
  List<String> get dayShort =>
      ['Pzt', 'Sal', 'Çar', 'Per', 'Cum', 'Cts', 'Paz'];

  @override
  List<String> get monthLong => [
        'Ocak',
        'Şubat',
        'Mart',
        'Nisan',
        'Mayıs',
        'Haziran',
        'Temmuz',
        'Ağustos',
        'Eylül',
        'Ekim',
        'Kasım',
        'Aralık'
      ];

  @override
  List<String> get monthShort => [
        'Oca',
        'Şub',
        'Mar',
        'Nis',
        'May',
        'Haz',
        'Tem',
        'Ağu',
        'Eyl',
        'Eki',
        'Kas',
        'Ara'
      ];

  @override
  String get pm => "ÖS";
}
