void main(List<String> arguments) {
  //print(desserts);
  //print(candy);
  //print(bigDeserts);

//exercises
//#1
  List<String> months = [];
  months.addAll([
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ]);

  final List<String> immutableMonths = List.unmodifiable(months);
  var upperCaseMonths = [for (var month in months) month.toUpperCase()];

  //mapsExercises();
  //overCollection();
  //miniExercise();
  //print(challenge1('my name is Heman Ekom Ekili'));
  //print(challenge2('my name is Heman Ekom Ekili'));
  print(challenge3(users));
}

const pastries = ['cookies', 'croissants'];
//const candy = ['Junior Mints', 'Twizzlers', 'M&Ms'];
//const desserts = ['donuts', ...pastries, ...candy];

//null spread operator ?...
List<String>? coffees;
final hotDrinks = ['milk tea', ...?coffees];

//collection if
const peanutAllergy = false;

const candy = [
  'Junior Mints',
  'Twizzlers',
  if (peanutAllergy) 'Reeses',
];

//collection for
final deserts = ['gobi', 'sahara', 'arctic'];

var bigDeserts = [
  'ARABIAN',
  for (var desert in deserts) desert.toUpperCase(),
];

//dart sets
void sets() {
  final Set<int> someSet = {1, 2, 3, 1};
  final setA = {8, 2, 3, 1, 4};
  final setB = {1, 6, 5, 4};

  final intersection = setA.intersection(setB);
//collectinos and most list operations work on sets
}

//Dart Maps
void maps() {
  final Map<String, int> inventory = {
    'cakes': 20,
    'pies': 14,
    'donuts': 37,
    'cookies': 141,
    'brownies': 3
  };

//looping in Maps
  for (var item in inventory.keys) {
    print(inventory[item]);
  }

  for (final entry in inventory.entries) {
    print('${entry.key} -> ${entry.value}');
  }
}

//Maps Exercises
void mapsExercises() {
  Map<String, String> data = {
    'name': 'Heman',
    'profession': 'Student',
    'country': 'Cameroon',
    'city': 'Buea'
  };

  data['country'] = 'Canada';
  data['city'] = 'Toronto';

  for (var entry in data.entries) {
    print('${entry.key} -> ${entry.value}');
  }
}

//mapping over collection
void overCollection() {
  const numbers = [1, 2, 3, 4];
  //mapping over collection
  final squares = numbers.map((number) => number * number);
  squares.toList();

  //filtering over collection
  final evens = squares.where((square) => square.isEven);

  //consolidating a collection
  const amounts = [199, 299, 399, 199, 499];
  final total = amounts.reduce((sum, element) => sum + element);

  final totals = amounts.fold(
    0,
    (int sum, element) => sum + element,
  );

  //custom sorting
  deserts.sort((d1, d2) => d1.length.compareTo(d2.length));

  //combining higher order methods
  const desserts = ['cake', 'pie', 'donuts', 'brownies'];
  final bigTallDeserts = desserts
      .where((dessert) => dessert.length > 5)
      .map((dessert) => dessert.toUpperCase());
  print(bigTallDeserts);
}

//mini exercices
void miniExercise() {
  final scores = [89, 77, 46, 93, 82, 67, 32, 88];
  scores.sort();
  final scoressort = scores.where((element) => element >= 80 && element <= 90);
  print(scoressort);
}

//major exercises
List<String> challenge1(String paragraph) {
  String Buffer = '';
  List<String> stringList = [];

  for (var i = 0; i < paragraph.length;) {
    if (paragraph[i] == ' ') {
      stringList.add(Buffer);
      Buffer = '';
      i++;
    } else {
      Buffer += paragraph[i];
      i++;
    }
  }
  stringList.add(Buffer);
  return stringList;
}

//challenge 2: Counting on you
Map<String, int> challenge2(String paragraph) {
  paragraph = paragraph.toLowerCase();
  print(paragraph);
  Map<String, int> returnMap = {};
  for (var i = 0; i < paragraph.length; i++) {
    if (paragraph[i] == ' ') {
      continue;
    }
    if (returnMap.containsKey(paragraph[i])) {
      returnMap.update(paragraph[i], (value) => value += 1);
    } else {
      returnMap.putIfAbsent(paragraph[i], () => 1);
    }
  }
  return returnMap;
}

//challenge3 : Mapping Users
class User {
  User(this.name, this.id);
  String name;
  int id;
}

List<User> users = [User('Heman', 0), User('Jan', 1), User('Randy', 2)];

Map<String, int> challenge3(List<User> users) {
  Map<String, int> returnMap = {};
  for (var element in users) {
    returnMap.putIfAbsent(element.name, () => element.id);
  }
  return returnMap;
}
