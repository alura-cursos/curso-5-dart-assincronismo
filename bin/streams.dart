
void main(){

  Stream myStream(int interval,[int? maxCount]) async*{
    int i= 1;
    while(i != maxCount){
      print('Counting: $i');
      Future.delayed(Duration(seconds: interval));
      yield i++;
    }
    print('Main finished');

  }

}