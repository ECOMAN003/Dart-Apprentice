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
class CommentData{
  
}