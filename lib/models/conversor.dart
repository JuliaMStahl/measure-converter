import 'package:measure_converter_atv3/enumeration/measure.dart';
import 'package:measure_converter_atv3/models/ingredient.dart';

class Conversor {
  final Map<String, Ingredient> ingredients;

  Conversor(this.ingredients);

  double? convert(
    String ingredientName,
    double quantity,
    Measure fromUnit,
    Measure toUnit,
  ) {
    if (!ingredients.containsKey(ingredientName) || quantity <= 0) {
      return null;
    }

    Ingredient ingredient = ingredients[ingredientName]!;
    double fromFactor = ingredient.conversionFactors[fromUnit] ?? -1;
    double toFactor = ingredient.conversionFactors[toUnit] ?? -1;

    if (fromFactor == -1 || toFactor == -1) {
      return null;
    }

    double inBaseUnit =
        quantity / fromFactor; // Converte para a unidade base (xícara).
    return inBaseUnit * toFactor; // Converte para a unidade de destino.
  }
}
