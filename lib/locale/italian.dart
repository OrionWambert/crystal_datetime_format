import 'package:crystal_date_time_format/locale/crystal_local.dart';

class CrystalItalianLocale extends AbstractCrystalLocale {
  @override
  String get am => "AM";

  @override
  List<String> get dayLong => [
        'Lunedì',
        'Martedì',
        'Mercoledì',
        'Giovedì',
        'Venerdì',
        'Sabato',
        'Domenica'
      ];

  @override
  List<String> get dayShort =>
      ['Lun', 'Mar', 'Mer', 'Gio', 'Ven', 'Sab', 'Dom'];

  @override
  List<String> get monthLong => [
        'Gennaio',
        'Febbraio',
        'Marzo',
        'Aprile',
        'Maggio',
        'Giugno',
        'Luglio',
        'Agosto',
        'Settembre',
        'Ottobre',
        'Novembre',
        'Dicembre'
      ];

  @override
  List<String> get monthShort => [
        'Gen',
        'Feb',
        'Mar',
        'Apr',
        'Mag',
        'Giu',
        'Lug',
        'Ago',
        'Set',
        'Ott',
        'Nov',
        'Dic'
      ];

  @override
  String get pm => "PM";
}
