void main(List<String> args) {
  String? userName = "a";

  if (userName.length > 2) {
    print("A");
  } else {
    throw UserNameException();
  }
  //dartta kendi custom extensionlarımızı yazabiliriz.
}

class UserNameException implements Exception {
  @override
  String toString() {
    // TODO: implement toString
    return 'user name null girmişsin bunu düzelt';
  }
}
