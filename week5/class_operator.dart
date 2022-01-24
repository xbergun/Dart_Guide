void main(List<String> args) {
  final bank1 = Bank(45, "12");
  final bank2 = Bank(30, "12");

  print(bank1 == bank2);

  //! classlar operatorleri tanımaz. Bu yüzden kendi operatorlerimizi yazmalıyız
  print(bank1 + bank2);

  //? müşteri diyor ki benim bankama gelen müşterilerimin id si aynı olanlar aynı müşteri olmalıdır.

  print(bank1 == bank2);

  //? diğer bir bankadan mobil aldık bunu ekleyip müşterirnin parasını sorgular mısın mixin ile with kullanarak

  //musteri adamin parasına 10 tl ekle ekrana döndür, adamin idsini 1 arttır

  bank1.money += 10;
  print(bank1.money);

  //tek satırda birden fazla nesneye değer ekleyip değer çıkartabiliyoruz.
  bank1
    ..money += 10
    ..updateName("veli");
  print(bank1);
}

class Bank with BankMixin {
  int money;
  final String id;
  String? name;

  Bank(this.money, this.id);

  int operator +(Bank newBank) {
    return this.money + newBank.money;
  }

  void updateName(String name) {
    this.name = name;
  }

  @override
  String toString() {
    return super.toString() + "berkay";
  }

  bool operator ==(Object object) {
    return object is Bank && object.id == id;
  }

  @override
  void sayBankHello() {
    calculateMoney(money);
  }
}

mixin BankMixin {
  void sayBankHello();

  void calculateMoney(int money) {
    print("money");
  }
}
