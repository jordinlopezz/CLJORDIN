String? upperCaseIt(String? str) {
  // Acceder condicionalmente al método toUpperCase si str no es null
  return str?.toUpperCase();
}

void main() {
  try {
    String? uno = upperCaseIt(null);
    if (uno != null) {
      print('Parece que no estás devolviendo null para entradas null.');
    } else {
      print('¡Éxito cuando str es null!');
    }
  } catch (e) {
    print('Intenté llamar a upperCaseIt(null) y obtuve una excepción: \n ${e.runtimeType}.');
  }
  
  try {
    String? dos = upperCaseIt('a string');
    if (dos == null) {
      print('Parece que estás devolviendo null incluso cuando str tiene un valor.');
    } else if (dos != 'A STRING') {
      print('Intenté upperCaseIt(\'a string\'), pero no obtuve \'A STRING\' como respuesta.');
    } else {
      print('¡Éxito cuando str no es null!');
    }
  } catch (e) {
    print('Intenté llamar a upperCaseIt(\'a string\') y obtuve una excepción: \n ${e.runtimeType}.');
  }
}
