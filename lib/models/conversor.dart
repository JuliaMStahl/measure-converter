import 'package:measure_converter_atv3/enumeration/measure.dart';
import 'package:measure_converter_atv3/models/ingredient.dart';

class Conversor {
  final Map<String, Map<Measure, double>> _conversionFactors = {
    'farinha': {
      Measure.gram: 120,
      Measure.liter: 0.130,
    },
    // ... outras substâncias ...
  };

  Ingredient converter(Ingredient ingredient, Measure newMeasure) {
    var factor = _conversionFactors[ingredient.name]?[newMeasure];
    if (factor == null) {
      throw Exception('Conversão não suportada');
    }
    return Ingredient(
        ingredient.name, ingredient.quantity * factor, newMeasure);
  }
}
