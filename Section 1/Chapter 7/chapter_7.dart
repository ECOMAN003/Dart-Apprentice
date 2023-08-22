void main(List<String> args) {
  String? profession;
  profession = 'basketball player';
  const iLove = 'Dart';

  // String? name;
  // print(name.length);

  //Null=Aware Operators
  String? message;
  final text = message ?? 'Error';

  //null values suck
  //print(isNegative(null));

  //bool flowerIsBeautiful = isBeautiful('flower')!;
  bool flowerIsBeautiful = isBeautiful('flower') as bool;

  User user = User()
    ?..name = 'Baby'
    ..id = 0;
}

//Null Safety is Bae : Little function
//to determmine if a number is negative
bool isNegative(int x) {
  return x.isNegative;
}

bool isPostitive(int? anInteger) {
  if (anInteger == null) {
    return false;
  }
  return !anInteger.isNegative;
}

bool? isBeautiful(String? item) {
  if (item == 'flower') {
    return true;
  } else if (item == 'garbage') {
    return false;
  }
  return null;
}

class User {
  String? name;
  int? id;
}
