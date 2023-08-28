//the late keyword
//challenges
//#1

import 'dart:math';

void main(List<String> args) {
  int? result = randomly();
  result ??= 0;
  print(result);
}

int? randomly() {
  if (Random().nextInt(2) == 0) {
    return null;
  }
  return 42;
}

//exercise 2
class Name {
  String? surname;
  String? givenName;
  late final String? fullName;
}
