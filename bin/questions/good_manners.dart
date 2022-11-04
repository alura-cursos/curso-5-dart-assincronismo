
class GoodManners{
  String question;
  bool isThisGoodManners = false;
  String kakoBot = 'KakoBOT:\n';
  GoodManners(this.question);

  bool isThisManners(){
    if(question.contains('oi') ||
        question.contains('ola')||
        question.contains('Oi') ||
        question.contains('Ola') ||
        question.contains('obrigado') ||
        question.contains('obrigada') ||
        question.contains('Obrigado') ||
        question.contains('Obrigada') ||
        question.contains('bom') ||
        question.contains('boa') ||
        question.contains('tarde') ||
        question.contains('noite') ||
        question.contains('de nada') ||
        question.contains('De nada')){
      isThisGoodManners = true;
    }
    return isThisGoodManners;
  }


}