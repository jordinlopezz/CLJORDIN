class FirstTwoLetters {
  final String letterOne;
  final String letterTwo;

  // Constructor with initializer list
  FirstTwoLetters(String word)
      : assert(word.length >= 2, 'The word must have at least two characters.'),
        letterOne = word[0],
        letterTwo = word[1];
}

void main() {
  final errs = <String>[];

  try {
    final result = FirstTwoLetters('My String');
    
    if (result.letterOne != 'M') {
      errs.add('Called FirstTwoLetters(\'My String\') and got an object with \n letterOne equal to \'${result.letterOne}\' instead of the expected value (\'M\').');
    }

    if (result.letterTwo != 'y') {
      errs.add('Called FirstTwoLetters(\'My String\') and got an object with \n letterTwo equal to \'${result.letterTwo}\' instead of the expected value (\'y\').');
    }
  } catch (e) {
    errs.add('Called FirstTwoLetters(\'My String\') and got an exception \n of type ${e.runtimeType}.');
  }

  bool caughtException = false;
  
  try {
    FirstTwoLetters('');
  } catch (e) {
    caughtException = true;
  }
  
  if (!caughtException) {
    errs.add('Called FirstTwoLetters(\'\') and didn\'t get an exception \n from the failed assertion.');
  }
  
  if (errs.isEmpty) {
    print('Success!');
  } else {
    errs.forEach(print);
  }
}