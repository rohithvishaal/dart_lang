/*
    Inheritance is sharing of behaviour between two classes 
    extend keyword is used for inheriting from parent class

    Whenever you use inheritance, It always creates a is-a relation
    between parent and child like
    Student is-a Person
    Truck is-a Vehicle
    Cow is-a Animal

    Dart supports only single inheritance no multiple inheritance

    Parent Class: The class whose properties and methods are inherited by
    another class. It is also called as base class or super class
    Child Class: the class that inherits the properties and methods of another 
    class. It is also called as derived class or sub class
*/

/*
Types of inheritance:
Single Inheritance :
  A class can inherit from only one class. In Dart we can only extend
  one class at a time

Multilevel Inheritance :
  A class can inherit from another class and that class can also inherit
  from another class. In Dart, we can extend a class from another class
  which is already extended from another class

Hierarchical Inheritance : 
  Parent class is inherited by multiple subclasses. For example
  Car class can be inherited by Toyota class and Honda class

Mutiple Inheritance :
  a class can inherit from multiple classes. Dart doesn't support this
  for example : Class Toyota extends Car, Vehicle {} is not allowed in Dart
*/

/*
    Why doesn't dart support Multiple Inheritance
    if class Tomato inherits class Fruit and class Vegetable
    then there may be two methods with the same name eat.
    If eat() is called and both the classes have eat() method
    then what should be called? Hence no support

    But you can see multiple inheritance is supported in python
    to tackle the above common method implementation problem
    python uses MRO (method resolution order)
    
    For example : 
    class Dog(Animal, Pet)

    if both Animal and Pet has a speak() method
    it will call the speak method of the Animal
    you can check what is called by running Dog.__mro__
*/

// Single Inheritance
class Person {
  String? name;
  int? age;

  void display() {
    print("Name: $name");
    print("Age: $age");
  }
}

class Student extends Person {
  String? school_name;
  String? school_address;

  void display_school_info() {
    print("School name: $school_name");
    print("School Address: $school_address");
  }
}

// Multi level inheritance

class Car {
  String? name;
  double? price;
  int num_seats = 4;
}

class Tesla extends Car {
  int num_seats = 6;
  void display() {
    print("Name : ${name}");
    print("Price : ${price}");
    print("Seats in Base Car: ${super.num_seats}");
  }
}

/*
super is used to refer to the parent class.
It is used to call the parent's class properties and methods
*/

class Model3 extends Tesla {
  String? color;

  void display() {
    super.display();
    print("Color : $color");
    print("Seats in Tesla: ${super.num_seats}");
  }
}

// Hierarchical Inheritance

class Shape {
  double? diameter1;
  double? diameter2;
}

class Rectangle extends Shape {
  double area() {
    return diameter1! * diameter2!;
  }
}

class Triangle extends Shape {
  double area() {
    return 0.5 * diameter1! * diameter2!;
  }
}

// Constructor Inheritance
class Laptop {
  Laptop() {
    print("Laptop Constructor");
  }
}

class Macbook extends Laptop {
  Macbook() {
    print("Macbook Constructor");
  }
}

// Inheritance of constructor with parameters
class Mobile {
  String? name;
  String? color;
  Mobile(this.name, this.color);
  Mobile.named_constructor({this.name, this.color});

  void display() {
    print("Mobile Name: $name");
    print("Mobile color: $color");
  }
}

class Apple extends Mobile {
  String features;
  Apple(name, color, this.features)
      : super.named_constructor(name: name, color: color);
  void display() {
    super.display();
    print("Features: $features");
  }
}
