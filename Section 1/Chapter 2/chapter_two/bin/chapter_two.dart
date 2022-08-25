import 'dart:math';

enum Weather { windy, cloudy, rainy, sunny }

final random = Random();

void main() {
  const weatherToday = Weather.cloudy;
  switch (weatherToday) {
    case Weather.rainy:
      print('Take An Umbrealla');
      break;
    case Weather.sunny:
      print('Take some Shades');
      break;
    case Weather.cloudy:
      print('It could Rain today');
      break;
    default:
      print('Cloudy With a ChanCE OF MEATBALLS');
  }

  //sum
  int sum = 11;
  while (sum < 10) {
    sum += 4;
  }
  print(sum);

  //random
  /**while (random.nextInt(6) + 1 != 6) {
    print('BEtter Luck Next time mate');
  }
  print('you\'ve finally found luck aiyy');**/

  /**const myString = 'I ❤ Dart';
  for (var codePoint in myString.runes) {
    print(String.fromCharCode(codePoint));
  }**/

  //const myNumbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
  //myNumbers.forEach((element) => print(element));

}
