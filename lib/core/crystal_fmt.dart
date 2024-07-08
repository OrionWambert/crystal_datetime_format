import 'package:crystal_date_time_format/core/crystal_hour_style.dart';
import 'package:crystal_date_time_format/date_time_format.dart';
import 'package:crystal_date_time_format/exceptions/date_not_defined.dart';
import 'package:crystal_date_time_format/locale/crystal_local.dart';
import 'package:flutter/material.dart';

import '../exceptions/pattern_not_found.dart';

// Todo add Crystal extension
// Todo add clock for test

class CrystalFmt {
  CrystalFormatStyle? _formatStyle;
  CrystalHourStyle? crystalHourStyle;
  String? _pattern;

  CrystalFmt._(this._pattern, {this.crystalHourStyle});

  CrystalFmt._style(this._formatStyle, {this.crystalHourStyle});

  static ofPattern(
      {String? pattern,
      CrystalFormatStyle? formatStyle,
      CrystalHourStyle? crystalHourStyle}) {
    if (pattern != null) {
      return CrystalFmt._(pattern, crystalHourStyle: crystalHourStyle);
    }
    if (formatStyle != null) {
      return CrystalFmt._style(formatStyle, crystalHourStyle: crystalHourStyle);
    }
    throw PatternNotFound("pattern or formatStyle not defined");
  }

  String? format(
      {DateTime? dateTime,
      AbstractCrystalLocale locale = const CrystalFrenchLocale(),
      String timezone = "Europe/Paris"}) {
    final tzDateTime = CrystalTzDateTimeUtil.from(dateTime!, timezone);

    if (tzDateTime != null) {
      if (_formatStyle != null) {
        return _styleFormatter(_formatStyle!,
            dateTime: tzDateTime, locale: locale);
      }

      if (_pattern != null) {
        return _patternFormatter(_pattern!, tzDateTime, locale);
      }
    } else {
      throw const DateNotDefinedException(
          "you must specified DateTime  or TimeOfDay instance");
    }
    return null;
  }

  String _patternFormatter(
      String pattern, DateTime dateTime, AbstractCrystalLocale locale,
      {String timezone = "Europe/Paris"}) {
    final tzDateTime = CrystalTzDateTimeUtil.from(dateTime, timezone);

    pattern =
        pattern.replaceAll(CrystalDatePattern.yyyy, tzDateTime.year.toString());

    pattern = pattern.replaceAll(
        CrystalDatePattern.yy, tzDateTime.year.toString().substring(2));
    pattern =
        pattern.replaceAll(CrystalDatePattern.M, tzDateTime.month.toString());
    pattern =
        pattern.replaceAll(CrystalDatePattern.MM, prefix(tzDateTime.month));
    pattern = pattern.replaceAll(
        CrystalDatePattern.MMM, locale.monthShort[tzDateTime.month + 1]);
    pattern = pattern.replaceAll(
        CrystalDatePattern.MMMM, locale.monthLong[tzDateTime.month + 1]);

    pattern =
        pattern.replaceAll(CrystalDatePattern.d, tzDateTime.day.toString());
    pattern = pattern.replaceAll(CrystalDatePattern.dd, prefix(tzDateTime.day));

    pattern = pattern.replaceAll(CrystalDatePattern.ddd,
        "${locale.dayShort[tzDateTime.weekday + 1]} ${prefix(tzDateTime.day)}");
    pattern = pattern.replaceAll(CrystalDatePattern.dddd,
        "${locale.dayLong[tzDateTime.weekday + 1]} ${prefix(tzDateTime.day)}");

    if (crystalHourStyle != null) {
      if (crystalHourStyle == CrystalHourStyle.SHORT) {
        String fullHour = CrystalDateTimeUtil.convertToHour12(
            "${tzDateTime.hour}:${tzDateTime.minute}:${tzDateTime.second}");
        pattern = pattern.replaceAll(CrystalDatePattern.hh, fullHour);
        pattern = pattern.replaceAll(CrystalDatePattern.mm, "");
        pattern = pattern.replaceAll(CrystalDatePattern.ss, "");
      } else {
        _replaceHourPattern(pattern, tzDateTime);
      }
    } else {
      _replaceHourPattern(pattern, tzDateTime);
    }
    return pattern;
  }

  _replaceHourPattern(String pattern, tzDateTime) {
    pattern =
        pattern.replaceAll(CrystalDatePattern.hh, prefix(tzDateTime.hour));
    pattern =
        pattern.replaceAll(CrystalDatePattern.mm, prefix(tzDateTime.minute));
    pattern =
        pattern.replaceAll(CrystalDatePattern.ss, prefix(tzDateTime.second));
    return pattern;
  }

  String _styleFormatter(CrystalFormatStyle formatStyle,
      {DateTime? dateTime, required AbstractCrystalLocale locale}) {
    StringBuffer buffer = StringBuffer();

    switch (formatStyle) {
      case CrystalFormatStyle.FULL:
        buffer.write(
            "${locale.dayLong[dateTime!.weekday - 1]} ${prefix(dateTime.day)} ${locale.monthLong[dateTime.month - 1]} ${dateTime.year}");
        break;
      case CrystalFormatStyle.LONG:
        buffer.write(
            "${prefix(dateTime!.day)} ${locale.monthLong[dateTime.month - 1]} ${dateTime.year}");
        break;
      case CrystalFormatStyle.MEDIUM:
        buffer.write(
            "${prefix(dateTime!.day)} ${locale.monthShort[dateTime.month - 1]} ${dateTime.year}");
        break;
      case CrystalFormatStyle.SHORT:
        buffer.write(
            "${prefix(dateTime!.hour)}:${prefix(dateTime.minute)}:${prefix(dateTime.second)}");
        break;
      case CrystalFormatStyle.DMY:
        buffer.write(
            "${prefix(dateTime!.day)}/${prefix(dateTime.month)}/${dateTime.year}");
        break;
      case CrystalFormatStyle.MDY:
        buffer.write(
            "${prefix(dateTime!.month)}/${prefix(dateTime.day)}/${dateTime.year}");
        break;
      case CrystalFormatStyle.YMD:
        buffer.write(
            "${dateTime!.year}/${prefix(dateTime.month)}/${prefix(dateTime.day)}");
        break;
      default:
        break;
    }
    return buffer.toString();
  }

  DateTime parseToDateTime(String date) {
    return DateTime.now();
  }

  TimeOfDay parseToTimeOfDay(String date) {
    return TimeOfDay.now();
  }

  String prefix(int dateOrMonth) {
    if (dateOrMonth < 10) {
      return "0$dateOrMonth";
    }
    return dateOrMonth.toString();
  }
}
