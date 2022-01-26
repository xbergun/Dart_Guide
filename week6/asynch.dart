Future<void> main(List<String> args) async {
  print("a");
  //5 saniye bekle sonra gel hiçbir mütşeri alma
  Future.delayed(Duration(
      seconds:
          2)); // böyle yapınca thread durmuyor ab yazıp 2 sn bekleyip çıkıyor. Bu yüzden await atıyoruz
  print("b");
  print("2 sn bekledi");

  await Future.delayed(Duration(seconds: 3));
  print("await 3 sn");

  //foreach ile, listlerimizi kontrol edebiliyoruz. Yanı burada her işlemden sonra şu kadar bekle şunu yap diyebiliyoruz. Ama başına await koymazsak bu direkt yazdırır. Eğer foreach in başına await koymazsak, komple o scope bitmeden aşağıya geçmeyecekti.
 await Future.forEach([1, 2, 3, 4, 5, 6], (int element) async {
    await Future.delayed(Duration(seconds: 2));
    print("İşlem bitit $element");
  });

  print("List Foreach'den sonraki ");
}


//bir servise istek atıyoruz cevap sonradan gelecek
//Ya da çok büyük bir matematik işlemi var zaman alacak.
//bu işlem devam ederken ben kendi işlerimi yapayım, benim kendi logiclerim çalışsın. Threadı durdurup işlem yap devam et.


//sync ler ise herhangi bir asenkron gibi threadi durdurmaz, çalışan akışın sırası bittikten sonra senkron olarak arka tarafta çalışır.
