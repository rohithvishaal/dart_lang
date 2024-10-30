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

/*
Factory Constructors

All the constructors that we used above are generative constructors
Dart also provides a special type of constructor called factory constructor

A factory constructor gives more flexibility to create an object
Generative constructors only create a instance of the class
Factory constructors can return an instance of the class or even subclass
It is also used to return the cached instance of the class

Rules for factory constructors 
- must return an instance of the class or sub-class
- can't use this keyword inside factory constructor
- It can be named or unnamed and called like normal constructor
- It can't access instance members of the class
*/

class Area {
  final int length;
  final int breadth;
  final int area;

  // An initializer list allows you to assign properties to a new instance
  // variable before the constructor body runs, but after the creation

  // Private constructor
  const Area._internal(this.length, this.breadth) : area = length * breadth;

//   Factory constructor
  factory Area(int length, int breadth) {
    if (length < 0 || breadth < 0) {
      throw Exception("Length and Breadth must be positive");
    }
    return Area._internal(length, breadth);
  }
}

/*
With a factory constructor you can initialize a final variable using logic
that can't be handled in the initializer list
*/
class Person_Factory {
  String first_name;
  String last_name;

  Person_Factory(this.first_name, this.last_name);

  factory Person_Factory.from_map(Map<String, Object> map) {
    final first_name = map['first_name'] as String;
    final last_name = map['last_name'] as String;
    return Person_Factory(first_name, last_name);
  }
}
/*
What is the difference between Named Constructor and Factory Constructor
|---------------------------|-----------------------------------------|-----------------------------------------------------------------|
| Aspect                    | Named Constructor                       | Factory Constructor                                             |
|---------------------------|-----------------------------------------|-----------------------------------------------------------------|
| **Keyword**               | Uses `ClassName.name()`                 | Uses `factory ClassName.name()`                                 |
| **Object Creation**       | Always creates a new instance           | Can return an existing instance or a new instance               |
| **Initialization Logic**  | Limited to standard initialization      | Can have complex logic, return subtypes, or cache instances     |
| **Use Case**              | Multiple ways to initialize an object   | Patterns like singleton, caching, or conditional creation       |
| **Return Type Control**   | Always returns an instance of the class | Can return different types (subclasses or existing instances)   |
|---------------------------|-----------------------------------------|-----------------------------------------------------------------|
*/

enum ShapeType { Circle, Rectangle }

abstract class Shape {
  factory Shape(ShapeType type) {
    switch (type) {
      case ShapeType.Circle:
        return Circle();
      case ShapeType.Rectangle:
        return Rectangle();
      default:
        throw 'Invalid Shape Type';
    }
  }

//   abstract method
  void draw();
}

class Circle implements Shape {
  @override
  void draw() {
    print("Drawing a circle");
  }
}

class Rectangle implements Shape {
  @override
  void draw() {
    print("Drawing Rectangle");
  }
}

// singleton usinfg factory constructors
class Singleton {
  static final Singleton _instance = Singleton._internal();

  // factory constructor
  factory Singleton() {
    return _instance;
  }

  // private constructor
  Singleton._internal();
}

void main() {
  Area area = Area(10, 20);
  print("Area is : ${area.area}");

// Below area will throw an error as breadth is < 0
//   Area area2 = Area(10, -1);
//   print("Area of Area2 is ${area2.area}");
  final person = Person_Factory('John', 'Doe');

  // create a person object from map
  final person2 =
      Person_Factory.from_map({'first_name': 'Harry', 'last_name': 'Potter'});

  // print first and last name
  print("From normal constructor: ${person.first_name} ${person.last_name}");
  print("From factory constructor: ${person2.first_name} ${person2.last_name}");

// Dart’s factory constructors allow an abstract class to return instances of its subclasses.
  Shape shape = Shape(ShapeType.Circle);
  Shape shape2 = Shape(ShapeType.Rectangle);
  shape.draw();
  shape2.draw();

  Singleton singleton1 = Singleton();
  Singleton singleton2 = Singleton();
  print("Is singleton1 and singleton2 same ? ${singleton1 == singleton2}");
}
