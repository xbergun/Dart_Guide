void main(List<String> args) {
  print("Hello");

  Stream<int> bankMoneys = Stream.empty();
  bankMoneys.listen((event) {
    print(event);
  });

  Future.delayed(Duration(seconds: 2)).whenComplete(() {
    print("Hello2");
  });

  print("Hello3");

  Future.delayed(Duration(seconds: 1)).whenComplete(() {
    print("Hello4");
  });
}

// ? Event Loop'da önce ana thread da ki işlemler biter. Sonra ise feature requestler başlar. Sırayla devam eder.

Stream<int> dataAddBankMoney(int retryCount, int money) async* {
  int _localRetry = 0;
  while (_localRetry < retryCount) {
    _localRetry++;
    yield money += 5;
  }
}
