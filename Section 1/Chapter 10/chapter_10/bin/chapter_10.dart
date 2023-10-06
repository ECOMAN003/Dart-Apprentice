import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

Future<void> main() async {
  final url = 'https://jsonplaceholder.typicode.com/todos/1';
  final parsedUrl = Uri.parse(url);
  final response = await http.get(parsedUrl);
  final statusCode = response.statusCode;
  if (statusCode == 200) {
    final rawJsonString = response.body;
    final jsonMap = jsonDecode(rawJsonString);
    final todo = Todo.fromJson(jsonMap);
    print(todo);
  } else {
    throw HttpException('$statusCode');
  }

  //testFuture();
  //tryCatchBlocks();
}

//Examples of a future
final myFuture = Future<int>.delayed(
  Duration(seconds: 1),
  () => 42,
);

///function to test futures
void testFuture() {
  print('Before the future');
  final myFuture = Future<int>.delayed(
    Duration(seconds: 1),
    () => 42,
  )
      .then(
        (value) => print('Value: $value'),
      )
      .catchError(
        (error) => print('Error: $error'),
      )
      .whenComplete(
        () => print('Future is complete'),
      );
  print('After the future');
}

//try-catch blocks with async-await
Future<void> tryCatchBlocks() async {
  print('Before the future');
  try {
    final value = await Future<int>.delayed(
      Duration(seconds: 1),
      () => 42,
    );
    throw Exception('There was an error');
    print('Value: $value');
  } catch (error) {
    print(error);
  } finally {
    print('Future is complete');
  }

  print('After the future');
}

//asynchronous network requests
class Todo {
  Todo({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  factory Todo.fromJson(Map<String, Object?> jsonMap) {
    return Todo(
      userId: jsonMap['userId'] as int,
      id: jsonMap['id'] as int,
      title: jsonMap['title'] as String,
      completed: jsonMap['completed'] as bool,
    );
  }

  final int userId;
  final int id;
  final String title;
  final bool completed;

  @override
  String toString() {
    return 'userId: $userId\n'
        'id: $id\n'
        'title: $title\n'
        'completed: $completed';
  }
}
