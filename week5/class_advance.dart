void main(List<String> args) {
  final user = _User("berkay", age: 21);

  //! Müşterinin yaşı 18 den küçük kontrolu yapar misin

  // if (user.age <18) { //! hata verir çünkü olmayabilir age.

  // }

  if (user.age is int) {
    //* bu kullanicinin değeri bir integer mi kontrol ediyoruz.
    if (user.age! < 18) {
      //burada force edebiliriz. Eğer is den geçiyorsa bir datası vardır o yüzden ! koyabiliriz.
      print("Evet küçük");
      user.updateMoneyWithString("TR");
    } else {
      user.updateMoneyWithNumber(
          15); // patlayacak çünkü artık bir integer oldu. Bunu as string dediğimiz için parse edemez.
    }
  }

  //? benim kullanıcılarımın parası var ama paranin tipi değişken olabilir, $ tl vs.
  //? parası olan adamın o parametresi bir isimde olabilir veya değer de olabilir.
  //tr yazcak ya da orada 15 yazabilir.
  //ekranda göster

  //! bu her türlü valuesini alacak işini yapacak. Ama doğru bir case değil. Peki bu dynamic nerede işimize yarıyor? bazen servisten aynı veri farklı fieldler de gelebiliyor. O tür durumlar da hayat kurtarabilir. Ama çok az kullanılmalı.
  final _newType = user.moneyType is String ? user.moneyType as String : "";

  print(_newType + "A");
}

//! Sınıf private yapmak

class _User {
  final String name; //!late ise sonradan ekleyebilir ismini,
  int? age; //* yaşını bilmiyorum.

  dynamic moneyType;

  _User(this.name, {this.age});

  //! bu dynamic de yapılabilir bir şey. Fakat şöyle bir şey var, ilk olarak hangisini verirseniz öbürü patlayacaktır. Crash olur.
  void updateMoneyWithString(String data) {
    moneyType = data;
  }

  void updateMoneyWithNumber(int number) {
    moneyType = number;
  }

  // ***************

}

