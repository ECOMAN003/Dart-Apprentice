//the late keyword
//challenges
//#1

import 'dart:math';

void main(List<String> args) {
  int? result = randomly();
  print(result);
}

int? randomly() {
  if (Random().nextInt(1) == 0) {
    return null;
  }
  return 42;
}
