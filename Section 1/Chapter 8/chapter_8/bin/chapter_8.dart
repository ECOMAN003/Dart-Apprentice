void main(List<String> arguments) {
  //print(desserts);
  //print(candy);
  print(bigDeserts);
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
const deserts = [
  'gobi',
  'sahara',
  'arctic'
];

var bigDeserts = [
  'ARABIAN',
  for(var desert in deserts) desert.toUpperCase(),
];