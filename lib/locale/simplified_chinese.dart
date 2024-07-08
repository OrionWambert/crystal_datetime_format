import 'package:crystal_date_time_format/locale/crystal_local.dart';

class CrystalSimplifiedChinese extends AbstractCrystalLocale {
  @override
  String get am => "上午";

  @override
  List<String> get dayLong => ['星期一', '星期二', '星期三', '星期四', '星期五', '星期六', '星期日'];

  @override
  List<String> get dayShort => ['周一', '周二', '周三', '周四', '周五', '周六', '周日'];

  @override
  List<String> get monthLong => [
        '一月',
        '二月',
        '三月',
        '四月',
        '五月',
        '六月',
        '七月',
        '八月',
        '九月',
        '十月',
        '十一月',
        '十二月'
      ];

  @override
  List<String> get monthShort => [
        '1月',
        '2月',
        '3月',
        '4月',
        '5月',
        '6月',
        '7月',
        '8月',
        '9月',
        '10月',
        '11月',
        '12月'
      ];

  @override
  String get pm => "下午";
}
