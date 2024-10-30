import 'dart:convert';

class Animal {
  String? name;
  int? number_of_legs;
  int? life_span;

  void display() {
    print("Animal name: $name.");
    print("Number of legs: $number_of_legs");
    print("Life span: $life_span");
  }
}

class Student {
  String? name;
  int? age;
  int? roll_number;
// Constructor in long form
  Student(String name, int age, int roll_number) {
    print("Constructor called");
    this.name = name;
    this.age = age;
    this.roll_number = roll_number;
  }

// Single line constructor
// Student(this.name, this.age, this.roll_number);

  void display() {
    print("Student name: $name");
    print("Student age : $age");
    print("Roll number: $roll_number");
  }
}

class Employee {
  String? name;
  int? age;
  String? position;
  double? salary;

  // Constructor with optional parameters
  Employee(this.name, this.age, [this.position = "Base", this.salary = 0]);

  void display() {
    print("Name : ${this.name}");
    print("Age: ${this.age}");
    print("Position: ${this.position}");
    print("Salary : ${this.salary}");
  }
}

// Constructor with named parameters
class Chair {
  String? name;
  String? color;

  Chair({this.name, this.color});

  void display() {
    print("Name: ${this.name}");
    print("Color: ${this.color}");
  }
}

// Constructor with default values
class Table {
  String? name;
  String? color;

  Table({this.color = "White", this.name = "Sofa chair"});
  void display() {
    print("Name: ${this.name}");
    print("Color: ${this.color}");
  }
}

// Default constructor
class Laptop {
  String? brand;
  int? price;

  Laptop() {
    print("This is a default laptop constructor");
  }
}

// Named constructor
class Mobile {
  String? name;
  String? color;
  int? price;

  Mobile(this.name, this.color, this.price);

  Mobile.custom_constructor(this.name, this.color, [this.price = 0]);

  void display() {
    print("Mobile name: ${this.name}");
    print("Mobile color: $color");
    print("Mobile price: $price");
  }
}

// some json stuff
class Person {
  String? name;
  int? age;
  Person(this.name, this.age);

  // A named constructor to parse from json
  Person.from_json(Map<String, dynamic> json) {
    name = json['name'];
    age = json['age'];
  }

  Person.from_json_string(String json_string) {
    Map<String, dynamic> json = jsonDecode(json_string);
    age = json['age'];
    name = json['name'];
  }

  void display() {
    print("Name : $name");
    print("Age : $age");
  }
}

// Constant constructor
class Point {
  final int x;
  final int y;

  const Point(this.x, this.y);
}

// Const constructor with named parameters
class Car {
  final String? name;
  final String? model;
  final int? price;

  const Car({this.name, this.model, this.price});

  void display() {
    print("Car name : $name");
    print("Car model : $model");
    print("Car price : $price");
  }
}

// Static
// If you want to define a variable or method that is shared by
// all instances of a class, you can use the static keyword
// static members are accessed using the class name
// It is for memory management

class Counter {
  static int count = 0;
  void get_count() {
    count++;
    print("Current count using static var: $count");
  }
}

// static method
class SimpleInterest {
  static double calc_si(double principal, double rate, double time) {
    return (principal * rate * time) / 100;
  }
}
