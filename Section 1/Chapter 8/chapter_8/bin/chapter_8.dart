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

  mapsExercises();
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
const deserts = ['gobi', 'sahara', 'arctic'];

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
