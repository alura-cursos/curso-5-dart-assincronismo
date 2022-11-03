void main() {
  // Future myFuture = Future(() {
  //   print('Going back to the Future');
  //   return 21;
  // }).then((value) => print('O resultado foi: $value'));

  Future<int> myFutureFunc() async {
    print('I have a function in the Future');
    await Future.delayed(Duration(seconds: 2));
    // throw Exception();
    return 12;
  }

  // myFutureFunc()
  //     .then((value) => print('O valor da função é: $value'))
  //     .onError((error, stackTrace) => print('An Error happend'))
  //     .whenComplete(() => print('The Future is Over'));


  Future<int> myFutureErrorFunc(int a, int b)async{
    try{
      if(a>b){
        throw Exception();
      }
      print('I am a Functional Function');
      await Future.delayed(Duration(seconds: 3));
      return 42;
    }catch(e){
      print('An Error happend: $e');
      return 42;
    }finally{
      print('The Future is finally Over');
    }

  }
myFutureErrorFunc(1, 2).then((value) => print('The value is: $value'));

  print('Done with main');
}
