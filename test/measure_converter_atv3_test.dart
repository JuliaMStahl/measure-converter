import 'package:measure_converter_atv3/data/ingredients.dart';
import 'package:measure_converter_atv3/enumeration/measure.dart';
import 'package:measure_converter_atv3/models/conversor.dart';
import 'package:test/test.dart';

void main() {
  group('Converter tests', () {
    final converter = Conversor(ingredientMap);

    test('Convert 1 cup of sugar to grams', () {
      double? result =
          converter.convert('açúcar', 1, Measure.cup, Measure.gram);
      expect(result, 200);
    });

    test('Convert 240 grams of água to liters', () {
      double? result =
          converter.convert('água', 1000, Measure.gram, Measure.liter);
      expect(result,
          closeTo(1, 0.01)); // Tolerância para valores em ponto flutuante.
    });

    test('Unsupported ingredient', () {
      double? result =
          converter.convert('chocolate', 1, Measure.cup, Measure.gram);
      expect(result, null);
    });
  });
}
