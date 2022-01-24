import '../week4/class_extends.dart';

void main(List<String> args) {
  final model = CarModel(category: CarModels.bmw, name: "bmw x5", money: 1412);

  final carItems = [
    CarModel(
        category: CarModels.bmw,
        name: "bmw x5",
        money: 12,
        isSecondHand: false),
    CarModel(
        category: CarModels.toyota,
        name: "toyota 21x5",
        money: 33,
        isSecondHand: true),
    CarModel(
        category: CarModels.yamaha,
        name: "yamaha x12",
        money: 41,
        isSecondHand: false),
    CarModel(category: CarModels.bmw, name: "bmw x1215", money: 454),
    CarModel(
        category: CarModels.toyota,
        name: "toyata x523",
        money: 2321,
        isSecondHand: false),
    CarModel(
        category: CarModels.mercedes,
        name: "mercedes amg232",
        money: 2321,
        isSecondHand: false),
  ];

  //!bu arabaların kaç tanesi 2. el sorusu için high order fonksiyonlar kullanırız. Normal de foreach if falan filan olur ama sorting sorgulama işlemlerini çok kolaylaştırıp bize geriye döndürürler. Foreach e göre çok daha performanslıdır.

  //any, içersinde buna uyan var mı diye boolean döndürür. Kaç tane diyorsak where
  final resultCount =
      carItems.where((element) => element.isSecondHand == true).length;
  print(resultCount);

  //yeni bir araba geldi, bu biz de var gibi hissediyorum doğru mu ?

  final newCar = CarModel(
      category: CarModels.toyota,
      name: "toyata x523",
      money: 2321,
      isSecondHand: false);

//---------------------------------------------------------------------------------------

//ilk false diyor ama operator yazdığımız zaman true döner controlü yapar.
  final isHaveCar = carItems.contains(newCar);
  if (isHaveCar) {
    print("Elimiz de var");
  } else {
    print("Patron yok olalım");
  }
  print(isHaveCar);
//---------------------------------------------------------------------------------------

  //? bana bmw olan ve moneysi 20 den büyük arabalarımızın ismini soyler misin
  final resultBmtMore20 = carItems.where((element) {
    return element.category == CarModels.bmw && element.money > 20;
  }).join();
  print(resultBmtMore20);
//---------------------------------------------------------------------------------------

  //? ya acaba sadece isimleri yan yana gösterir misin?
  final carNames = carItems.map((e) => e.name).join(",");
  print(carNames);
//---------------------------------------------------------------------------------------

  //? benim elimde mercedes var mı ?
  //single where de eğer datayı bulamazsa crash yiyecek.

  try {
    final isHaveMercedes = carItems
        .singleWhere((element) => element.category == CarModels.mercedes);
    print(isHaveMercedes.name);
  } catch (e) {
    print("Mercedes yok");
  } finally {
    print("Abi bu işlem ağır oldu bidaha sorma");
  }
//---------------------------------------------------------------------------------------

  final index = carItems.indexOf(newCar);
  print(index);

//---------------------------------------------------------------------------------------

  //?ya ben yeni araba aldım mercedes, ekler mşsin.

  carItems.add(CarModel(
      category: CarModels.mercedes, name: "mercedes amg180", money: 123232));

//---------------------------------------------------------------------------------------

  //? bana arabalarımı küçükten büyüğe doğru sıralar mısın ?
  carItems.sort((first, second) => second.money.compareTo(first.money));
  print(carItems);
//---------------------------------------------------------------------------------------
  //?ben bütün arabalarımı user yapacaım

  final users = carItems.expand((element) => element.users).toList();
  print(users);

  //---------------------------------------------------------------------------------------
  //?ya bu son eklenenleri silelim
  //bmw olan ve 30 dan düşük olanları silelim

  carItems.removeWhere(
      (element) => element.category == CarModels.bmw || element.money < 30);
  print(carItems);
}

//? benim bir arabalar sınıfım olacak. Arabaların modeli(bmw, toyota, yamaha), ismi, parasi kesin olacak. Şehri olmayabilir, ikinci el durumu eğer müşteri söylemezse her ürün 2. el kabul edilecek.
//benim 5 tane arabam olacak bunlar gibi.
//benim bu arabalarımın kaç tanesi 2. el ?

class CarModel {
  final CarModels category;
  final String name;
  final double money;
  String? city;
  bool isSecondHand;

  List<User> users;

  CarModel(
      {required this.category,
      required this.name,
      required this.money,
      this.isSecondHand = true,
      this.users = const [],
      this.city});

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CarModel &&
        other.category == category &&
        other.name == name &&
        other.money == money &&
        other.city == city &&
        other.isSecondHand == isSecondHand;
  }

  @override
  int get hashCode {
    return category.hashCode ^
        name.hashCode ^
        money.hashCode ^
        city.hashCode ^
        isSecondHand.hashCode;
  }

  @override
  String toString() {
    return '$name - $money';
  }
}

enum CarModels { bmw, yamaha, toyota, mercedes }
