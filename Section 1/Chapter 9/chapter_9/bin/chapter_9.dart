void main(List<String> arguments) {
  useClass1();
}

//using the classes
void useClass1() {
  final jon = Person('Jon', 'Snow');
  final jane = Student('Jane', 'Snow');
  print(jon.fullName);
  print(jane.fullName);
}

void useClass2() {
  final jessie = SchoolBandMember('Jessie', 'Jones');
  final marty = StudentAthlete('Marty', 'McFly');
  final students = [jessie, marty];
  print(int is Object);
}

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

class Student extends Person {
  Student(String givenName, String surname) : super(givenName, surname);
  var grades = <Grade>[];

  @override
  String get fullName => '$surname, $givenName';
}

class SchoolBandMember extends Student {
  SchoolBandMember(String givenName, String surname)
      : super(givenName, surname);
  static const minimumPracticeTime = 2;
}

class StudentAthlete extends Student {
  StudentAthlete(String givenName, String surname) : super(givenName, surname);
  bool get isEligible => grades.every((grade) => grade != Grade.F);
}

//using initializer lists, super gets called last
//class SomeChild extends SomeParent{
//someChild(double height)
//: assert(height != 0),
//_height = height,
//super();
// 
//final double _height;
//}

//mini-exercises
class Fruit {
  Fruit(this.color);
  String color;
  String describeColor() {
    return 'This fruit is color $color';
  }
}

class Melon extends Fruit {
  Melon(String color) : super(color);
}

class Watermelon extends Fruit {
  Watermelon(String color) : super(color);
  @override
  String describeColor() {
    return 'color is $color';
  }
}

class Cantaloupe extends Fruit {
  Cantaloupe(String color) : super(color);
}


void miniExercise() {}
