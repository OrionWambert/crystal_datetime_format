import 'package:crystal_date_time_format/locale/crystal_local.dart';

class CrystalKhmerLocale implements AbstractCrystalLocale {
  @override
  String get am => "ព្រឹក";

  @override
  List<String> get dayLong =>
      ['ច័ន្ទ', 'អង្គារ', 'ពុធ', 'ព្រហស្បតិ៍', 'សុក្រ', 'សៅរ៍', 'អាទិត្យ'];

  @override
  List<String> get dayShort => ['ច', 'អ', 'ព', 'ព្រ', 'សុ', 'ស', 'អា'];

  @override
  List<String> get monthLong => [
        'មករា',
        'កុម្ភៈ',
        'មីនា',
        'មេសា',
        'ឧសភា',
        'មិថុនា',
        'កក្កដា',
        'សីហា',
        'កញ្ញា',
        'តុលា',
        'វិច្ឆិកា',
        'ធ្នូ'
      ];

  @override
  List<String> get monthShort => [
        'មករា',
        'កុម្ភៈ',
        'មីនា',
        'មេសា',
        'ឧសភា',
        'មិថុនា',
        'កក្កដា',
        'សីហា',
        'កញ្ញា',
        'តុលា',
        'វិច្ឆិកា',
        'ធ្នូ'
      ];

  @override
  String get pm => "ល្ងាច";
}
