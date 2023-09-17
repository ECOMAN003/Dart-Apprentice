void main(List<String> arguments) {}

//subclasses
enum Grade { A, B, C, D, F }

class Person {
  Person(this.givenName, this.surname);
  String givenName;
  String surname;
  String get fullName => '$givenName $surname';

  @override
  String toString() => fullName;
}

class Student {
  Student(this.givenName, this.surname);
  String givenName;
  String surname;
  var grades = <Grade>[];
  String get fullName => '$givenName $surname';

  @override
  String toString() => fullName;
}
