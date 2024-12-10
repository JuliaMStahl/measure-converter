import 'package:measure_converter_atv3/enumeration/measure.dart';

class Ingredient {
  final String name;
  final Map<Measure, double> conversionFactors;

  Ingredient(this.name, this.conversionFactors);
}
