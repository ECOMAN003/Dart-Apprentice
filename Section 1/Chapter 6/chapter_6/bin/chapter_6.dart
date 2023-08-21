void main() {
  // final user = User()
  //   ..name = 'Ray'
  //   ..id = 42;

  // user.name = 'Ray';
  // user.id = 42;
  // print(user.toJson());
  
  final password = Password()..value = '#@Heman2003!@';
  print(password.isValid());
}

// class User {
//   int id = 0;
//   String name = '';

//   @override
//   String toString() {
//     return 'User (id: $id, name: $name)';
//   }

//   String toJson() {
//     return '{"id":$id,"name":"$name"}';
//   }
// }

class Password {
  String value = '';

  @override
  String toString() {
    return value;
  }

  bool isValid() {
    if (value.length > 8) {
      return true;
    }
    return false;
  }
}

