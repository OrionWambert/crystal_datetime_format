import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:date_time_format/date_time_format.dart';

Future<void> main() async {
  CrystalTzDateTimeUtil.initialize();

  test("pattern test", () {
    CrystalFmt crystalFmt = CrystalFmt.ofPattern(pattern: "d MMM YYYY ");

    print(
        "heure fmt  = ${crystalFmt.format(dateTime: DateTime.now(), timezone: CrystalTimezone.AFRICA_BRAZZAVILLE, locale: CrystalEnglishLocale())}");
    print(
        "heure fmt  = ${crystalFmt.format(dateTime: DateTime.now(), locale: CrystalFrenchLocale())}");
    print(
        "heure fmt  = ${crystalFmt.format(dateTime: DateTime.now(), locale: CrystalArabicLocale())}");
    print(
        "heure fmt  = ${crystalFmt.format(dateTime: DateTime.now(), locale: CrystalItalianLocale())}");
    print(
        "heure fmt  = ${crystalFmt.format(dateTime: DateTime.now(), locale: CrystalSpanishLocale())}");

    TimeOfDay timeOfDay =  TimeOfDay.now();

  });

  test("format style test", () {
    CrystalFmt formatter =
        CrystalFmt.ofPattern(formatStyle: CrystalFormatStyle.DMY);

    print(
        "Date format DMY result ${formatter.format(dateTime: DateTime.now())}");

    formatter = CrystalFmt.ofPattern(formatStyle: CrystalFormatStyle.FULL);

    print(
        "Date format FULL result ${formatter.format(dateTime: DateTime.now())}");

    formatter = CrystalFmt.ofPattern(formatStyle: CrystalFormatStyle.LONG);

    print(
        "Date format LONG result ${formatter.format(dateTime: DateTime.now())}");

    formatter = CrystalFmt.ofPattern(formatStyle: CrystalFormatStyle.MEDIUM);

    print(
        "Date format MEDIUM result ${formatter.format(dateTime: DateTime.now())}");

    formatter = CrystalFmt.ofPattern(formatStyle: CrystalFormatStyle.SHORT);

    print(
        "Date format SHORT result ${formatter.format(dateTime: DateTime.now())}");

    formatter = CrystalFmt.ofPattern(formatStyle: CrystalFormatStyle.MDY);

    print(
        "Date format MDY result ${formatter.format(dateTime: DateTime.now())}");

    formatter = CrystalFmt.ofPattern(formatStyle: CrystalFormatStyle.DMY);

    print(
        "Date format DMY result ${formatter.format(dateTime: DateTime.now())}");

    formatter = CrystalFmt.ofPattern(formatStyle: CrystalFormatStyle.YMD);

    print(
        "Date format YMD result ${formatter.format(dateTime: DateTime.now())}");
  });
}
