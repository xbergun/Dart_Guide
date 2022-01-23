void main(List<String> args) {
  final int userMoney = 19;
  const String bankName = "VB Bank";

  const String bankNameSpeacial = "VB Bank";
  final user1 = "Bank 1 musteri";
  const double user1Money = 100.00;

  const String user2 = "Bank2 musteri";
  int user2Money = 500;

  user2Money = user2Money - user1Money.toInt();

  print(user2Money);

  //!-----------------------------------------------------------------------------------------------

  int haliSahaKapasite = 100;
  int musteri1 = 20;
  int musteri2 = 50;

  int sum = musteri1 + musteri2;

  print(
      "halisaha kapasite saat 10 da $haliSahaKapasite den ${haliSahaKapasite - sum} kalmıştır");
}

//odev2
//benim bir halısaham var 100 kişi kapasiteli
//saat 10 da 20 kişilik bir musteri1 maç yapacak ve 20 kişi kesin gelecek
//saat 10 da musteri2 gelip bana 50 kişilik yer ayırtacak.
//bu işlem sonrasında benim hali saha kapasitem kaç kalmıştir.

//int sum = 