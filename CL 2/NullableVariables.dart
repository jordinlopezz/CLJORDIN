String? name = 'Jane';
String? address;

void main() {
  try {
    if (name == 'Jane' && address == null) {
      // verificar que "name" es nullable
      name = null;
      print('Success!');
    } else {
      print('Not quite right, try again!');
    }
  } catch (e) {
    print('Exception: ${e.runtimeType}');
  }
}