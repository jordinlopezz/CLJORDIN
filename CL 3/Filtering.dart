Iterable<User> filterOutUnder21(Iterable<User> users) {
  // Implement the filterOutUnder21 function
  return users.where((user) => user.age >= 21);
}

Iterable<User> findShortNamed(Iterable<User> users) {
  // Implement the findShortNamed function
  return users.where((user) => user.name.length <= 3);
}

class User {
  final String name;
  final int age;

  User(
    this.name,
    this.age,
  );
}

// The following code is used to provide feedback on your solution.
// There is no need to read or modify it.
void main() {
  final users = [
    User('Alice', 21),
    User('Bob', 17),
    User('Claire', 52),
    User('David', 14),
    User('Ed', 22),
    User('Ann', 30),
    User('Tom', 19),
  ];

  final adults = filterOutUnder21(users);
  final shortNamed = findShortNamed(users);

  try {
    final adultsList = adults.toList();
    if (adultsList.length != 3 || adultsList.any((user) => user.age < 21)) {
      print('Looks like `filterOutUnder21` is wrong. Keep trying!');
      return;
    }
  } on UnimplementedError {
    print(
      'Tried running `filterOutUnder21`, but received an error. '
      'Did you implement the function?',
    );
    return;
  } catch (e) {
    print('Tried running `filterOutUnder21`, but received an exception: $e');
    return;
  }

  try {
    final shortNamedList = shortNamed.toList();
    if (shortNamedList.length != 3 || shortNamedList.any((user) => user.name.length > 3)) {
      print('Looks like `findShortNamed` is wrong. Keep trying!');
      return;
    }
  } on UnimplementedError {
    print(
      'Tried running `findShortNamed`, but received an error. '
      'Did you implement the function?',
    );
    return;
  } catch (e) {
    print('Tried running `findShortNamed`, but received an exception: $e');
    return;
  }

  print('Success. All tests passed!');
}
