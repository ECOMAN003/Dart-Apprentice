Future<void> main() async {
  print('Before the future');
  final value = await Future<int>.delayed(
    Duration(seconds: 1),
    () => 42,
  );
  print('Value: $value');
  print('After the future');
  //testFuture();

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
