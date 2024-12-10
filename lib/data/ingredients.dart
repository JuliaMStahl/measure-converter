import 'package:measure_converter_atv3/enumeration/measure.dart';
import 'package:measure_converter_atv3/models/ingredient.dart';

final Map<String, Ingredient> ingredientMap = {
  'farinha': Ingredient('farinha', {
    Measure.gram: 120,
    Measure.liter: 0.130,
    Measure.cup: 1,
    Measure.tableSpoon: 14,
    Measure.teaSpoon: 48,
  }),
  'açúcar': Ingredient('açúcar', {
    Measure.gram: 200,
    Measure.liter: 0.200,
    Measure.cup: 1,
    Measure.tableSpoon: 12,
    Measure.teaSpoon: 48,
  }),
  'água': Ingredient('água', {
    Measure.gram: 1000,
    Measure.liter: 1,
    Measure.cup: 4.17,
    Measure.tableSpoon: 66.67,
    Measure.teaSpoon: 200,
  }),
};
