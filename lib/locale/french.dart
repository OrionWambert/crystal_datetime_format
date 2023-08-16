import 'package:date_time_format/locale/crystal_local.dart';

class CrystalFrenchLocale implements AbstractCrystalLocale {
  const CrystalFrenchLocale();

  @override
  String get am => "Avant midi";

  @override
  List<String> get dayLong => [
        "Lundi",
        "Mardi",
        "Mercredi",
        "Jeudi",
        "Vendredi",
        "Samedi",
        "Dimanche",
      ];

  @override
  List<String> get dayShort =>
      ["Lun.", "Mar.", "Mer.", "Jeu.", "Ven.", "Sam.", "Dim."];

  @override
  List<String> get monthLong => [
        "Janvier",
        "Février",
        "Mars",
        "Avril",
        "Mai",
        "Juin",
        "Juillet",
        "Août",
        "Septembre",
        "Octobre",
        "Novembre",
        "Décembre"
      ];

  @override
  List<String> get monthShort => [
        "Janv.",
        "Fév.",
        "Mars",
        "Avr.",
        "Mai",
        "Juin",
        "Juil.",
        "Août",
        "Sept.",
        "Oct.",
        "Nov.",
        "Déc.",
      ];

  @override
  String get pm => "Après midi";
}
