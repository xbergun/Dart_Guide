void main(List<String> args) {
  final user = User(money: 5);

  user.calculateMoney((data) {
    print(user.money);
    return data + 5;
  });
}

typedef CalculateCallBack = int Function(int data);


class User {
  int money;
  User({
    required this.money,
  });

  void calculateMoney(CalculateCallBack onComplete) {
    money += 5;
    onComplete(money);
  }
}
