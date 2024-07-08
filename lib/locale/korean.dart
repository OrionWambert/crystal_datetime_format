import 'package:crystal_date_time_format/locale/crystal_local.dart';

class CrystalKoreanLocale implements AbstractCrystalLocale {
  @override
  String get am => "오전";

  @override
  List<String> get dayLong => [
        '월요일',
        '화요일',
        '수요일',
        '목요일',
        '금요일',
        '토요일',
        '일요일',
      ];

  @override
  List<String> get dayShort => [
        '월',
        '화',
        '수',
        '목',
        '금',
        '토',
        '일',
      ];

  @override
  List<String> get monthLong => [
        '1월',
        '2월',
        '3월',
        '4월',
        '5월',
        '6월',
        '7월',
        '8월',
        '9월',
        '10월',
        '11월',
        '12월'
      ];

  @override
  List<String> get monthShort => [
        '1월',
        '2월',
        '3월',
        '4월',
        '5월',
        '6월',
        '7월',
        '8월',
        '9월',
        '10월',
        '11월',
        '12월'
      ];

  @override
  String get pm => "오후";
}
