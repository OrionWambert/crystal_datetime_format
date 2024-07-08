import 'package:crystal_date_time_format/locale/crystal_local.dart';

class CrystalSpanishLocale implements AbstractCrystalLocale {
  @override
  String get am => "AM";

  @override
  List<String> get dayLong => [
        'Lunes',
        'Martes',
        'Miércoles',
        'Jueves',
        'Viernes',
        'Sábado',
        'Domingo'
      ];

  @override
  List<String> get dayShort =>
      ['Lun', 'Mar', 'Mié', 'Jue', 'Vie', 'Sáb', 'Dom'];

  @override
  List<String> get monthLong => [
        'Enero',
        'Febrero',
        'Marzo',
        'Abril',
        'Mayo',
        'Junio',
        'Julio',
        'Agosto',
        'Septiembre',
        'Octubre',
        'Noviembre',
        'Diciembre'
      ];

  @override
  List<String> get monthShort => [
        'Ene',
        'Feb',
        'Mar',
        'Abr',
        'May',
        'Jun',
        'Jul',
        'Ago',
        'Sep',
        'Oct',
        'Nov',
        'Dic'
      ];

  @override
  String get pm => "PM";
}
