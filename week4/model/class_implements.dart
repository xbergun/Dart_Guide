void main(List<String> args) {}

//extend edince farklı özelliklere sahip olabiliyordu alt classlar
//ancak implement edince classlar aynı olmak zorunda, her motedoun kendine özel lociği varsa kullanırız.

abstract class IStudent {
  final String name;
  final int age;

  IStudent(this.name, this.age);

  void saySomething() {
    print("abstract");
  }
}

class Student implements IStudent {
  final String name;
  final int age;

  Student(this.name, this.age);

  @override
  void saySomething() {
    print("class");
  }
}

class Student2 {
  final String name;
  final int age;

  Student2(this.name, this.age);
}
