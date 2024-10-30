/*
In Dart every class us implicit interface

Interface defines a syntax that a class must follow.
It is a contract that defines the capabilities of a class.
It is used to achieve abstraction
when you implement an interfaces you must implement all the properties and methods

In Dart there is no keyword interface but you can use class or abstract class
All classes implicitly define an interface
Mostly abstract class is used to declare an interface
*/

// creating an interface using abstract class
abstract class Person {
  can_walk();
  can_run();
}

// Implementing interface
class Student implements Person {
  @override
  can_run() {
    print("Student can run");
  }

  @override
  can_walk() {
    print("Student can walk");
  }
}

// creating an interface using concrete class
class Laptop {
  // method
  turnOn() {
    print('Laptop turned on');
  }

  // method
  turnOff() {
    print('Laptop turned off');
  }
}

class MacBook implements Laptop {
  // implementation of turnOn()
  @override
  turnOn() {
    print('MacBook turned on');
  }

  // implementation of turnOff()
  @override
  turnOff() {
    print('MacBook turned off');
  }
}

// Implementing multiple interfaces
abstract class Area {
  void area();
}

abstract class Perimeter{
  void perimeter();
}

class Rectangle implements Area, Perimeter {
 int length;
 int width;

 Rectangle(this.length, this.width);

  @override
  void area() {
    print("The area of rectangle: ${this.length * this.width}");
  }

  @override
  void perimeter() {
    print("The perimeter of rectangle : ${2 * (length + width)}");
  }
}
void main() {
  var macBook = MacBook();
  macBook.turnOn();
  macBook.turnOff();
  Rectangle rectangle = Rectangle(10, 20);
  rectangle.area();
  rectangle.perimeter();
}
