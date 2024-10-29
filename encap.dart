// didn't expect to create another file but this is how shit works

/*
 Encapsulation - means hiding data within a lib preventing from 
 outside factors

 What is a library in dart
 By default every .dart file is a library
 A library is a collection of functions and classes
 A library can be imported into another library using the import keyword

 Encapsulation can be achieved by
    - Declaring the class properties as private by using underscore(_)
    - providing public getter and setter methods to access and update
        the value of a private property

Note : Dart doesn't support keywords like public, private and protected
Dart uses _ (underscore) to make a property or method private

The encapsulation happens at library level, not at class level

For class definitions refer encap.dart
*/
class Encap_Employee {
  int? _id;
  String? _name;

  // we can make a read only property by adding final
  final int? _salary = 10000; // lifetime fixed salary :(

  int get_id() {
    return _id!;
  }

  String get_name() {
    return _name!;
  }

  int get_salary() {
    return _salary!;
  }

  void set_id(id) {
    this._id = id;
  }

  void set_name(name) {
    this._name = name;
  }

  void display() {
    print("current id : ${_id}");
    print("current name : ${_name}");
    print("Current salary: ${_salary}");
  }
}

class Encap_Vehicle {
  String? _model;
  int? _year;

  // Getter method
  String get model => _model!;

  // Setter method
  set model(String model) => _model = model;

  // Getter
  int get year => _year!;

  // setter
  set year(int year) => _year = year;
}

class Encap_Notes {
  String? _name;
  double? _price;

  Encap_Notes(String name, double price) {
    this._name = name;
    if (price > 0)
      this._price = price;
    else
      throw Exception("Price cannot be zero or negative");
  }

  set name(String name) => _name = name;
  set price(double price) {
    if (price < 0) throw Exception("Price cannot be less than 0");
    this._price = price;
  }

  // Getter with data validation
  String get name {
    if (_name == "") return "No Name";

    return this._name!;
  }

  double get price => this._price!;

  // Map Getter
  Map<String, dynamic> get custom_map {
    return {"Name": this._name!, "price": this._price!};
  }
}
