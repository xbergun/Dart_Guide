void main(List<String> args) {
  final newProduct = Product.money;
  calculateMoney();

  //user classını kullnakarak product yapmak istiyorum
}

//! her projenin kendisine özel bir çok katmanı vs vardır ama bir çok proje de şu ortaktır. Hepsinin bir product modeli vardır ve api vardır ömür boyu o kullanılır. Bazı sınıflar ortak kullanılabilir.

//! static kullanımı çok tehlilidir. Yani fazlasıyla manipüle edilebilir ve crach yiyebiliriz.

void calculateMoney() {
  if (Product.money > 5) {
    print("T l daha ekledik");
    Product.incrementMoney(5);
    print(Product.money);
  }
}

void productNameChange() {
  //! Product.companyNmae = ""; //bunu yapamaz o yüzden avantajlıdır. Static değişkeni orda bırakmak çok büyük sıkıntıdır
}

class Product {
  static int money = 10;
  static const companyNmae = "VB BANK";
  String name;

  Product(this.name);

  //return etmesini isityorsak factory kullanırız.
  factory Product.fromUser(User user) {
    return Product(user.name);
  }

  static void incrementMoney(int newMoney) {
    money += newMoney;
  }
}

class User {
  final String name;
  final String product;

  User(this.name, this.product);
}

