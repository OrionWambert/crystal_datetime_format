import 'package:crystal_date_time_format/locale/crystal_local.dart';

class CrystalRussianLocale implements AbstractCrystalLocale {
  @override
  String get am => "AM";

  @override
  List<String> get dayLong => [
        'Понедельник',
        'Вторник',
        'Среда',
        'Четверг',
        'Пятница',
        'Суббота',
        'Воскресенье'
      ];

  @override
  List<String> get dayShort => ['Пн', 'Вт', 'Ср', 'Чт', 'Пт', 'Сб', 'Вс'];

  @override
  List<String> get monthLong => [
        'Январь',
        'Февраль',
        'Март',
        'Апрель',
        'Май',
        'Июнь',
        'Июль',
        'Август',
        'Сентябрь',
        'Октябрь',
        'Ноябрь',
        'Декабрь'
      ];

  @override
  List<String> get monthShort => [
        'Янв.',
        'Февр.',
        'Март',
        'Апр.',
        'Май',
        'Июнь',
        'Июль',
        'Авг.',
        'Сент.',
        'Окт.',
        'Нояб.',
        'Дек.'
      ];

  @override
  String get pm => "PM";
}
