import 'package:measure_converter_atv3/enumeration/measure.dart';

class InputHandler {
  Measure? parseMeasure(String? input) {
    switch (input?.toLowerCase()) {
      case 'gram':
        return Measure.gram;
      case 'liter':
        return Measure.liter;
      case 'cup':
        return Measure.cup;
      case 'tablespoon':
        return Measure.tableSpoon;
      case 'teaspoon':
        return Measure.teaSpoon;
      default:
        return null;
    }
  }
}
