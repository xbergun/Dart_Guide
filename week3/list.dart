void main(List<String> args) {
  List<int> moneys = [1, 3, 3, 23, 123, 12312];
  final List<int> newMoneys = [1, 3, 3, 23, 123, 12312];
  //sıralar
  moneys.sort();
  //başa ekler
  moneys.add(5);
  moneys.add(333);
  //spesifik bir yer için insert
  moneys.insert(5, 550);
  //.reversed.toList().add(55);

  print(moneys);

  //final var ama referans tip tuttuğu için liste içeriğine erişip dokunabiliyoruz.
  newMoneys.add(5);
  print(newMoneys);

  //100 tane müşteri yap, bunların hepsine sira ile numarasına göer  5 tl ekle

  List<double> customerMoney = List.generate(100, (index) => index + 5);

  print(customerMoney);

  //customers 100 30 40 60
  //35 tl den büyük olanları burada kredi verebiliriz yaz
  //kucuk olanlara by yaz

  List<int> moneyCustomerNews = [100, 30, 40, 60];

  for (var i = 0; i < moneyCustomerNews.length; i++) {
    if (moneyCustomerNews[i] > 35) {
      print("${moneyCustomerNews[i]}: size kredi verebiliriz");
    } else {
      print("$moneyCustomerNews[i] byby");
    }
  }

  for (var index in moneyCustomerNews) {
    if (index > 35) {
      print("$index: size kredi verebiliriz");
    } else {
      print("byby");
    }
  }
  print("********************************");

  List<dynamic> dinamik = [];  


  
}
