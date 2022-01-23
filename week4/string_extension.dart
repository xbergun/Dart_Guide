void main(List<String> args) {
  if ('ali'.isAdmin()) {}

  String? name;
  
}

//gelmezse boş kabul et
extension StringUserCheckExtension on String? {
  bool isAdmin() {
    return (this ?? '').toLowerCase() == "admin".toLowerCase();
  }
}
