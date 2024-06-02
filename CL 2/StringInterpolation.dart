String stringify(int x, int y) {
  // Imprimir los valores
  print('x: $x, y: $y');
  
  // Devolver la cadena formateada
  return '$x $y';
}

void main() {
  assert(stringify(2, 3) == '2 3',
      "Your stringify method returned '${stringify(2, 3)}' instead of '2 3'");
  print('Success!');
}