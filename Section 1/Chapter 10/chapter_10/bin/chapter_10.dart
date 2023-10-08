import 'dart:convert';
import 'dart:async';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:isolate';

Future<void> main() async {
  try {
/** */ final url = 'https://jsonplaceholder.typicode.com/todos/1';
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
  } on SocketException catch (error) {
    print(error);
  } on HttpException catch (error) {
    print(error);
  } on FormatException catch (error) {
    print(error);
  }
  //longerStream();
  //streamFunction();
  //testFuture();
  //tryCatchBlocks();
  //cancelStream();
  //transformStream();
  //transformStream2();
  //streamExercises();
  print("Ok I'm counting...");
  print(playHideAndSeekTheLongVersion());
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

//mini exercise for async
void miniExercises() {
  try {
    final message = Future<String>.delayed(
      Duration(seconds: 2),
      () => 'I am from the future',
    );
    print(message);
  } catch (error) {
    print(error);
  }
}

//streams
Future<void> streamFunction() async {
  final file = File('assets/text.txt');
  final contents = await file.readAsString();
  print(contents);
}

Future<void> longerStream() async {
  final file = File('assets/text_long.txt');
  final stream = file.openRead();
  stream.listen(
    (data) {
      print(data.length);
    },
    onError: (error) {
      print(error);
    },
    onDone: () {
      print('All finished');
    },
  );
}

//another version of above function
Future<void> longerStream2() async {
  try {
    final file = File('assets/text_long.txt');
    final stream = file.openRead();
    await for (var data in stream) {
      print(data.length);
    }
  } on Exception catch (error) {
    print(error);
  } finally {
    print('All finished');
  }
}

//cancelling a stream
Future<void> cancelStream() async {
  final file = File('assets/text_long.txt');
  final stream = file.openRead();
  StreamSubscription<List<int>>? subscription;
  subscription = stream.listen(
    (data) {
      print(data.length);
      subscription?.cancel();
    },
    cancelOnError: true,
    onDone: () {
      print('All finished');
    },
  );
}

//transforming a stream
Future<void> transformStream() async {
  final file = File('assets/text.txt');
  final stream = file.openRead();
  stream.listen((data) {
    print(data);
  });
}

//transforming a stream into readable data
Future<void> transformStream2() async {
  final file = File('assets/text.txt');
  final stream = file.openRead();
  await for (var data in stream.transform(utf8.decoder)) {
    print(data);
  }
}

//mini-exercises for streams heheh
Future<void> streamExercises() async {
  final myStream = Stream<int>.periodic(
    Duration(seconds: 1),
    (value) => value,
  ).take(10);
  await for (var data in myStream) {
    print(data);
  }
}

//isolates
void playHideAndSeekTheLongVersion(SendPort sendPort) {
  var counting = 0;
  for (var i = 0; i <= 10000000000; i++) {
    counting = i;
  }
  sendPort.send('$counting! Ready or not, Here I come');
}

//receive port
Future<void> receivePort() async {
  //1
  final receivePort = ReceivePort();

  //2
  final isolate = await Isolate.spawn(
    playHideAndSeekTheLongVersion,
    //3
    receivePort.sendPort,
  );

  //4
  receivePort.listen((message) {
    print(message);
    //5
    receivePort.close();
    isolate.kill();
  });
}
