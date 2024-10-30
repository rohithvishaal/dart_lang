/*
Mixins are a way of reusing the code in multiple classes
Mixins are declared using the keyword mixin
Three keywords are used whle working with mixins: mixin, with and on
It is possible to use multiple mixins in one class

Note: The with keyword is used to apply the mixin to the class
It promotes DRY principle

Rules for mixin
- mixin can't be instantiated. You can' create object of mixin.
- use the mixin to share the code between multiple classes
- mixin has no constructor and cannot be extended
- It is possible to use multiple mixins in a class

What is allowed for mixin
- Add properties and static variables
- Add regular, abstract and static methods
- can use one or more mixins in class

What is not allowed for mixin
- can't define constructor
- can't extend mixin
- can't create object for mixin

*/

mixin CanFly {
  void fly() {
    print("I can fly");
  }
}

mixin CanWalk {
  void walk() {
    print("I can walk");
  }
}

class Bird with CanFly, CanWalk {}

class Human with CanWalk {}

// sometimes, you want to use a mixin only with a specific class
// In this case, you can use the on keyword

abstract class Animal {
  String name;
  double speed;

  Animal(this.name, this.speed);

  void run();
}

mixin CanRun on Animal {
  @override
  void run() {
    print("$name is running at speed $speed");
  }
}

class Dog extends Animal with CanRun {
  Dog(String name, double speed) : super(name, speed);
}

void main() {
  var bird = Bird();
  print("Bird");
  bird.fly();
  bird.walk();
  print("Human");
  var human = Human();
  human.walk();
  var dog = Dog("Scooby", 100);
  dog.run();
}
