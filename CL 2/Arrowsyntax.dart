class MyClass {
  int value1 = 2;
  int value2 = 3;
  int value3 = 5;

  // Devuelve el producto de los valores anteriores:
  int get product => value1 * value2 * value3;

  // Añade 1 a value1:
  void incrementValue1() => value1 += 1;

  // Devuelve una cadena que contiene cada elemento de la lista, separado por comas (e.g., 'a,b,c'):
  String joinWithCommas(List<String> strings) => strings.join(',');
}

void main() {
  final obj = MyClass();
  final errs = <String>[];

  try {
    final product = obj.product;

    if (product != 30) {
      errs.add(
          'La propiedad product devolvió $product en lugar del valor esperado (30).');
    }
  } catch (e) {
    print(
        'Intenté usar MyClass.product, pero encontré una excepción: \n ${e.runtimeType}.');
    return;
  }

  try {
    obj.incrementValue1();

    if (obj.value1 != 3) {
      errs.add(
          'Después de llamar a incrementValue1, value1 era ${obj.value1} en lugar del valor esperado (3).');
    }
  } catch (e) {
    print(
        'Intenté usar MyClass.incrementValue1, pero encontré una excepción: \n ${e.runtimeType}.');
    return;
  }

  try {
    final joined = obj.joinWithCommas(['one', 'two', 'three']);

    if (joined != 'one,two,three') {
      errs.add(
          'Intenté llamar a joinWithCommas([\'one\', \'two\', \'three\']) y recibí $joined en lugar del valor esperado (\'one,two,three\').');
    }
  } catch (e) {
    print(
        'Intenté usar MyClass.joinWithCommas, pero encontré una excepción: \n ${e.runtimeType}.');
    return;
  }

  if (errs.isEmpty) {
    print('¡Éxito!');
  } else {
    errs.forEach(print);
  }
}
