void main(List<String> args) {
  int musteri1 = 10;
  controlUserMoney(musteri1);

  final newResult1 = checkDolars(150, currentDolar: 15).floor();
  print(newResult1);

  final newResult2 = checkEuro(money: 500);
  print(newResult2);
}

void controlUserMoney(int money) {
  final int beklenenMoney = 5;
  if (money > beklenenMoney) {
    print("Para var");
  } else {
    print("Para yok");
  }
}
//! Optional fields logic
double checkDolars(int money, {int currentDolar = 14}) {
  return money / currentDolar;
}

int checkEuro({required int money, int currentEuro = 15}) {
  return money ~/ currentEuro;
}
