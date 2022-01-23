void main(List<String> args) {
  int money = 15;
  String userName = "Berkay";
  bool isCustomerRich = true;
  print("$money  $userName");

  if (money > 15) {
    print("Sen zenginsin abi");
  } else {
    print("Fakirsin");
  }

  money = money - 10;

  if (money > 15) {
    print("Sen zenginsin abi");
  } else {
    print("ne işin var");
  }

  //müşteri bankaya gelir ve 10 tl si vardır. Bir sorgu yapar. Sorgu sonucu 20 tl si alınır. Eğer kalan parası 0 dan küçükse bankadan kovulur.

  int newCustomerMoney = 0;
  const int bankQuery = 5;
  const int bankQueryGeneral = 20;

  if (newCustomerMoney > bankQuery) {
    print("Kalan parasi $newCustomerMoney");
    newCustomerMoney -= bankQueryGeneral;
  } else if (newCustomerMoney > 0) {
    print("Lütfen sıra alınır");
  } else
    print("Sorgulama başarızı kalan para $newCustomerMoney");
}
