void main(List<String> arguments) {
  //print(desserts);
  //print(candy);
  print(bigDeserts);

//exercises
//#1
  List<String> months = [];
  months.add('January');
  months.add('February');
  months.add('March');
  months.add('April');
  months.add('May');
  months.add('June');
  months.add('July');
  months.add('August');
  months.add('September');
  months.add('October');
  months.add('November');
  months.add('December');

  final List<String> immutableMonths = List.unmodifiable(months);
  var upperCaseMonths = [for(var month in months) month.toUpperCase()];

  print(upperCaseMonths);
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
