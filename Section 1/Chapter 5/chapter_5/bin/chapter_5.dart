void main() {
  String myName = personName('Agen', 'Persis Ekili', title: 'Dr.');
  print(myName);
}

String personName(String fristName, String lastName,
    {required String title}) {
  return '$title $fristName $lastName';
}

// Diferences exist between named, required, and oprional parameters
//we use the curly braces, adn the square ones, to play around ewith these, 
//to acheive what we want in the end.