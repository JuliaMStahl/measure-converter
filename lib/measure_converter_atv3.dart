import 'dart:io';

import 'package:measure_converter_atv3/data/ingredients.dart';
import 'package:measure_converter_atv3/enumeration/measure.dart';
import 'package:measure_converter_atv3/models/conversor.dart';

import 'utils/input_handler.dart';

void main() {
  final converter = Conversor(ingredientMap);
  final inputHandler = InputHandler();

  _runConverterApp(converter, inputHandler);
}

void _runConverterApp(Conversor converter, InputHandler inputHandler) {
  print("Bem-vindo ao Conversor de Medidas Culinárias!");
  print("Insira o ingrediente (ex: farinha, açúcar, água):");
  String? ingredient = stdin.readLineSync()?.toLowerCase();

  if (ingredient == null || !converter.ingredients.containsKey(ingredient)) {
    print("Ingrediente inválido ou não suportado.");
    return;
  }

  print("Insira a quantidade:");
  double? quantity = double.tryParse(stdin.readLineSync()!);

  if (quantity == null || quantity <= 0) {
    print("Quantidade inválida.");
    return;
  }

  print(
      "Escolha a unidade de entrada (gram, liter, cup, tableSpoon, teaSpoon):");
  String? fromUnitInput = stdin.readLineSync();
  Measure? fromUnit = inputHandler.parseMeasure(fromUnitInput);

  print("Escolha a unidade de saída (gram, liter, cup, tableSpoon, teaSpoon):");
  String? toUnitInput = stdin.readLineSync();
  Measure? toUnit = inputHandler.parseMeasure(toUnitInput);

  if (fromUnit == null || toUnit == null) {
    print("Unidade inválida.");
    return;
  }

  double? result = converter.convert(ingredient, quantity, fromUnit, toUnit);

  if (result == null) {
    print("Conversão não suportada.");
  } else {
    print(
        "$quantity ${fromUnit.name} de $ingredient equivale a ${result.toStringAsFixed(2)} ${toUnit.name}.");
  }
}
