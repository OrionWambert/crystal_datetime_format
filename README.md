# DateTime Conversion and Extensions Library for Dart/Flutter

The DateTime Conversion and Extensions Library for Dart/Flutter is a powerful and versatile tool
designed to simplify the manipulation of DateTime objects in your projects. This library provides
bidirectional conversion features between DateTime objects and strings, along with useful extensions
to optimize the use of DateTime objects, including timezone support.

## Key Features

- **Simplified Conversion:** Easily transform DateTime objects into formatted strings for display or
  storage, and also perform the reverse conversion.

- **Timezone Support:** Effortlessly handle timezones when converting DateTime objects to strings
  and vice versa, making it ideal for applications with international users.

- **Utility Extensions:** Benefit from a set of extensions for DateTime objects, such as calculating
  time differences, adding or subtracting durations, date comparison, and much more.

## Usage Examples

### Conversion from DateTime to Strings

```dart
import 'package:crystal_date_time_format/crystal_date_time_format.dart';

void main() {
  CrystalFmt formatter = CrystalFmt.ofPattern(formatStyle: CrystalFormatStyle.DMY);
  print(
      "Date : ${formatter.format(dateTime: DateTime.now())}");
}
```
