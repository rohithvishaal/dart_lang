/*
  Abstract classes can't be initialized. It is used to define the
  behaviour of a class that can be inherited by other classes

  Abstract Method is declared without an implementation.
  It is declared with semicolon(;) instead of a method body

  Subclasses of an abstract class must implement all the abstract methods
  of the abstract class
*/
abstract class Bank {
  String name;
  double rate;

  Bank(this.name, this.rate);

  // Abstract method
  void interest();

  // Non-Abstract method: It can have implementation
  void display() {
    print("Bank Name: $name");
  }
}

class SBI extends Bank {
  SBI(String name, double rate) : super(name, rate);

  @override
  void interest() {
    print("The ROI of SBI is $rate");
  }
}

class ICICI extends Bank {
  ICICI(String name, double rate) : super(name, rate);

  @override
  void interest() {
    print("The ROI of ICICI is $rate");
  }
}
