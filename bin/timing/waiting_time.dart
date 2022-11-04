
class BotClock{

  Future clock(int seconds){
    return Future.delayed(Duration(seconds: seconds));
  }
}