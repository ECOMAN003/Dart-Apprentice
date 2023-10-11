import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

//challenge1: Whose turn is it?
void challenge1() {
  print('1 synchronous');
  Future(() => print('2 event queue')).then(
    (value) => print('3 synchronous'),
  );
  Future.microtask(() => print('4 microtask queue'));
  Future.microtask(() => print('5 microtask queue'));
  Future.delayed(
    Duration(seconds: 1),
    () => print('6 event queue'),
  );
  Future(() => print('7 event queue')).then(
    (value) => Future(() => print('8 event queue')),
  );
  Future(() => print('9 event queue')).then((value) => Future.microtask(
        () => print('10 microtask queue'),
      ));
  print('11 synchronous');
}

/**In summary no futures execute first > then microtasks next > then normal futures */
//in fact idk

//challenge 2
Future<void> challenge2() async {
  try {
    final url = 'https://jsonplaceholder.typicode.com/comments';
    final parsedUrl = Uri.parse(url);
    final response = await http.get(parsedUrl);
    final statusCode = response.statusCode;
    if (statusCode == 200) {
      final rawJsonString = response.body;
      final jsonMap = jsonDecode(rawJsonString);
      final comment = Comment.fromJson(jsonMap);
      print(comment);
    } else {
      throw Exception('$statusCode');
    }
  } on SocketException catch (error) {
    print(error);
  } on HttpException catch (error) {
    print(error);
  } on FormatException catch (error) {
    print(error);
  }
}

class Comment {
  Comment(
      {required this.postId,
      required this.id,
      required this.name,
      required this.email,
      required this.body});

  factory Comment.fromJson(List<Map<Comment>> jsonMap) {
    return Comment(
        postId: jsonMap['postId'] as int,
        id: jsonMap['id'] as int,
        name: jsonMap['name'] as String,
        email: jsonMap['email'] as String,
        body: jsonMap['body'] as String);
  }

  final int postId;
  final int id;
  final String name;
  final String email;
  final String body;
}
