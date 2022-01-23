void main(List<String> args) {
  Map<String, int> users = {
    'Ahmet': 10,
    "mehmet": 20,
  };

  //ahmetin ne kadar parası var
  print("ahmetin parası ${users['Ahmet']}");

  //müşteri kimler var elinde
  for (var item in users.values) {
    print(item);
  }

  for (var i = 0; i < users.length; i++) {
    print("${users.keys.elementAt(i)}${users.values.elementAt(i)} ");
  }

  //ben bakayım, musterimin birden fazla hesabı olabiklir
  //ahmet bey 3 hesabı var sırasıyla 100 300 200
  //megmet bey 2 hesabı var 30 50
  //veli bey 1 hesap 30

  final Map<String, List<int>> vbBank = {
    'ahmet': [100, 300, 200],
  };
  vbBank['mehmet'] = [30, 50];
  vbBank['veli'] = [10];

  for (var item in vbBank.keys) {
    //bankanın tüm elemanları
    for (var money in vbBank[item]!) {
      print(money);
      if (money > 150) {
        print("kredin hazır ${item}");
        break;
      }
    }
  }

  //bankadaki müşterilerinin hesaplarinin toplam mevlasını merak ediyorum

  for (var item in vbBank.keys) {
    int result = 0;
    for (var money in vbBank[item]!) {
      result += money;
    }
    print("${item} senin toplam paran $result");
  }
  
}
