void main() {
  // String myName = personName('Agen', 'Persis Ekili', title: 'Dr.');
  // print(myName);

  // String amIWonderful = youAreWonderful(name: 'Heman', numberPeople: 10);
  // print(amIWonderful);
  // final tripple = applyMultiplier(3);
  // print(tripple(9));

  // Numbers.forEach((element) {
  //   final trippled = element * 3;
  //   print(trippled);
  // });
  people.forEach((name) {
    print(wonderful(name, 10));
  });
}

// String personName(String fristName, String lastName,
//     {required String title}) {
//   return '$title $fristName $lastName';
// }

// Diferences exist between named, required, and oprional parameters
//we use the curly braces, adn the square ones, to play around ewith these,
//to acheive what we want in the end.

// String youAreWonderful({required String name, int numberPeople = 30}) {
//   return 'You are wonderful, $name, $numberPeople people think so';
// }

// Function applyMultiplier(num multiplier) {
//   return (num value) {
//     return value * multiplier;
//   };
// }

const Numbers = [1, 2, 3];

Function wonderful = (String name, int numberPeople) {
  return 'You Are Wonderful, $name, $numberPeople think so';
};

const people = ['Chris', 'Tiffani', 'Pablo'];
