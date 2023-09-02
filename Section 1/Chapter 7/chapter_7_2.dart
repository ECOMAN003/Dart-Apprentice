//the late keyword
//challenges
//#1

import 'dart:math';

void main(List<String> args) {
  // int? result = randomly();
  // result ??= 0;
  // print(result);

  Name myName = Name(true);
  myName.surname = "Heman";
  print(myName.toString());
}

int? randomly() {
  if (Random().nextInt(2) == 0) {
    return null;
  }
  return 42;
}

//exercise 2
class Name {
  Name(this.surnsmeIsFirst) {
    surname ??= "";
    givenName ??= "";
  }

  String? surname;
  String? givenName;
  late final String? _fullName;
  final bool surnsmeIsFirst;

  @override
  String toString() {
    if (surnsmeIsFirst == true) {
      _fullName = surname! + " " + givenName!;
    } else {
      _fullName = givenName! + " " + surname!;
    }
    return _fullName!;
  }
}
