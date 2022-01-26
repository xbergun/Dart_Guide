void main(List<String> args) {
  IUser user = Turk();
  user.sayName();
  user = English();
  user.sayName();
}

//!ortak interfacelerin ortak classların farklı class lar da aynı yerde farklı işleri yapmasıdır.
abstract class IUser {
  final String name;

  IUser(this.name);

  void sayName() {}
}

class Turk implements IUser {
  @override
  String get name => "Berkay";

  @override
  void sayName() {
    print("Merhaba kapidan hoşgeldiniz $name");
    print("Karnın Aç Mı ?");
  }
}

class English implements IUser {
  @override
  String get name => "Adam";

  @override
  void sayName() {
    print("Welcome to your home $name");
    print("Let's meet our friend in Oxford");
  }
}



class German{

}