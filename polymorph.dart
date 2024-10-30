/*
Well the classic
Poly means many and morph means forms

Polymorphism is the ability of an object to take on many forms
Polymorphism is updating or modifying the feature, function, or 
implementation that already exists in parent class
*/

// Polymorphism by method overriding

class Animal {
  void eat(){
    print("Animal is eating");
  }
}

class Dog extends Animal {
  @override
  void eat() {
    print("Dog is eating");
  }
}

// polymorphism by method overloading is not supported in dart