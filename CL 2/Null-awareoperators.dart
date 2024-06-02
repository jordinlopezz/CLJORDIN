String? foo = 'a string';
String? bar; // = null

// operador ?? para asignar 'a string' a baz si baz es null.
String? baz = foo ?? bar;

void updateSomeVars() {
  // operador ??= para asignar 'a string' a bar si bar es null.
  bar ??= 'a string';
}

void main() {
  try {
    updateSomeVars();
    
    if (foo != 'a string') {
      print('Looks like foo somehow ended up with the wrong value.');
    } else if (bar != 'a string') {
      print('Looks like bar ended up with the wrong value.');
    } else if (baz != 'a string') {
      print('Looks like baz ended up with the wrong value.');
    } else {
      print('Success!');
    }
  } catch (e) {
    print('Exception: ${e.runtimeType}.');
  }
}
