void main(List<String> args) {
  final userNormal = User("brky", 20);
  final userBank = BankUser("name", 21, 23);
  final specialUser = SpecialUser("name", 324, 34, 2);

  print(specialUser.calculateMoney);

  print(specialUser.money);
  userNormal.sayMoneyWithCompanyName();
}

//paralarını görebilmelerini istiyorum benim banka ismimle birlikte
//benim bütün metodlarım şunu yapacak. ortak olan metodları ve fieldleri ana class da yapmamızı sağlar.
abstract class IUser {
  final String name;
  final int money;

  IUser(this.name, this.money);

  void sayMoneyWithCompanyName() {
    print("Ahmet $money paraniz vardir");
  }
}

class User extends IUser {
  final String name;
  final int money;

//abstract class da fieldleri tanımladık. Ancak oraya bilgi gitmiyor. O yüzden buradan super ile taşıyoruz.
  User(this.name, this.money) : super(name, money);
}

class BankUser extends IUser {
  final int bankInCode;

  BankUser(String name, int money, this.bankInCode) : super(name, money);

  void bankSpecialLogic(args) {
    print(money);
  }
}

class SpecialUser extends IUser {
  final int bankInCode;
  late final int _discount;

  SpecialUser(String name, int money, this.bankInCode, int discount)
      : super(name, money) {
    _discount = discount;
  }

  //indrimli fiytım ne kadar
  int get calculateMoney => money - money ~/ _discount;
}
