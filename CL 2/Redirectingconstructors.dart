class Color {
  int red;
  int green;
  int blue;
  
  Color(this.red, this.green, this.blue);

  // Named constructor "black" redirects to the default constructor
  Color.black() : this(0, 0, 0);
}

// Tests your solution (Don't edit!):
void main() {
  final errs = <String>[];

  try {
    final result = Color.black();
    
    if (result.red != 0) {
      errs.add('Called Color.black() and got a Color with red equal to \n ${result.red} instead of the expected value (0).');
    }

    if (result.green != 0) {
      errs.add('Called Color.black() and got a Color with green equal to \n ${result.green} instead of the expected value (0).');
    }

    if (result.blue != 0) {
      errs.add('Called Color.black() and got a Color with blue equal to \n ${result.blue} instead of the expected value (0).');
    }
  } catch (e) {
    print('Called Color.black() and got an exception of type ${e.runtimeType}.');
    return;
  }

  if (errs.isEmpty) {
    print('Success!');
  } else {
    errs.forEach(print);
  }
}