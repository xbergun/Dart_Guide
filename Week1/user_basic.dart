void main(List<String> args) {
//yeni bir user adi olustur
//yeni bir para ver
//bu parayı 20 ye böl ve göster

  String user1 = "Berkay";
  int userMoney = 50;
  double userLastMoney = userMoney * 0.2;

  print("$user1 , ilk paraniz $userMoney ve son paraniz ${userLastMoney.floor()}");
}
