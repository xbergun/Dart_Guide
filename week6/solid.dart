void main(List<String> args) {
  IDatabase database = SQL();
  database = MongoDb();
  database.write();
}

//! S,

class UserManager {
  String name;

  UserManager({
    required this.name,
  });

  void changeUserName(String name) {
    this.name = name;
  }

  //bir class kendi amacını yapar. Başka işe karışmaz.
  //Localleme yapacaksak, ortak bir class oluştur orada yap işini.
  void changeLocalization() {
    print("Object");
  }
}

class UserLocalizatin {
  final UserManager manager;

  UserLocalizatin(this.manager);

  void updateNameAndLocalization() {
    manager.changeUserName("a");
    changeLocalization();
  }

  void changeLocalization() {
    print("Object");
  }
}

//? Bizim yaptığımız işlerimiz, classlarımız, açık kapalı kuralına uygun olmalı. Yani core classlar kendi içerisinde değiştirilememeli ama bu classdan türüyenlerden büyüyebilmeli

class Product {
  final String name;
  final String money;

  Product(this.name, this.money);
}

class ProductCategories extends Product {
  ProductCategories(String name, String money) : super(name, money);
  final String category = "";
}

// Sen bir class yapıyorsan, ben bu class ın her zaman için alt dallardan üst dala eşitlenebilir.

abstract class IDatabase {
  void write();
}

class SQL extends IDatabase {
  @override
  void write() {
    // TODO: implement write
  }
}

class MongoDb extends IDatabase {
  @override
  void write() {
    // TODO: implement write
  }
}

//interfacelerin parçalanması
//! Bu sayede user businesslerini parçalamış oluyoruz. Avantajı nedir? Diyelim bi tane classım var UserLocation, bunu Iuserlocationdan extends ediyoruz. Bu sayede sadece o işi yapmış oluyor. Ama yine root bir interfacemiz mevcut with ile birlikte. Bu da daha kolay geliştirmeye yol açıyor.
abstract class IUserOperation with IUserLocation, ILanguage {
  void write();
  void read();
  void delete();
}

abstract class IUserLocation {
  void locationChange();
}

abstract class ILanguage {
  void language();
}

class UserLocation extends IUserLocation {
  @override
  void locationChange() {
    // TODO: implement locationChange
  }
}

// Üst class a dokunmuyoruz alt classdan instance alıyoruz. Yani üst classlar da alt classların bağımlılıkları olmaması lazım.

abstract class ICameraManager {
  void readQR();
}

class DeviceCameraManager extends ICameraManager {
  final IphoneCameraRead iphoneCameraRead;

  DeviceCameraManager(this.iphoneCameraRead);
  @override
  void readQR() {
    // TODO: implement readQR
  }
}

class IphoneCameraRead extends ICameraManager {
  @override
  void readQR() {
    // TODO: implement readQR
  }
}
