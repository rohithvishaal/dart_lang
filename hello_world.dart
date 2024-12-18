import 'dart:io';
import 'dart:math';
import 'encap.dart';
import 'inheritance.dart' as inherit;
import 'polymorph.dart' as polymorph;
import 'classes.dart';
import 'abstract.dart' as abstract_c;

bool take_input = false;

// Functions
void calculate_interest(double principal, double rate, double time) {
  double interest = principal * rate * time / 100;
  print("Simple interest is $interest");
}

// parameter and return type
int add(int a, int b) {
  var total;
  total = a + b;
  return total;
}

// parameter and no return type
void mul_func(int a, int b) {
  var total;
  total = a * b;
  print("Multiplication is : $total");
}

// no parameter and return type
String greet() {
  String greet = "Welcome";
  return greet;
}

// no parameter and no return type
void greetings() {
  print("Hello World!!!");
}

// Optional parameter
void print_info(String name, String gender, [String title = "sir/ma'am"]) {
  print("Hello $title $name your gender is $gender");
}

// Named parameter
void print_info_named({String? name, String? gender}) {
  print("Hello $name your gender is $gender");
}

// required parameter
void print_info_required({required String name, required String gender}) {
  print("Hello $name your gender is $gender");
}

enum Weather { sunny, snowy, cloudy, rainy }

enum Days { Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday }

// enhanced enum
enum CompanyType {
  partnership("Nvidia"),
  corporation("Google");

  // Members
  final String text;
  const CompanyType(this.text);
}

void main() {
  // Define variable types
  String name = "Neo";
  String address = "Chicago";
  num age = 24;
  num height = 5.9;
  bool is_married = false;
  const this_is_fixed = 3.14;
  print("Name is $name");
  print("Address is at $address");
  print("Age is $age");
  print("Height is $height");
  print("is Married $is_married");
  print("The value is fixed at $this_is_fixed");

  // data types
  // Numbers, Strings, Booleans, Lists, Maps, Sets, Runes - unicode values of string, Null

  // Numbers
  int num1 = 5;
  double num2 = 130.2;
  num num3 = 50;
  num num4 = 50.5;

  num sum = num1 + num2 + num3 + num4;
  print("Num1 is $num1");
  print("Num2 is $num2");
  print("Num3 is $num3");
  print("Num4 is $num4");
  print("Sum is $sum");

  // round double value to 2 decimal places
  double price = 1130.222329;
  print(price.toStringAsFixed(2));

  // String

  String school_name = "Diamond School";
  String school_address = "New York 2140";
  print("School name is $school_name and School Address is $school_address");

  // Multiline strings
  String multi_line = '''
  This is some multiline \
  text that is written \
  line by line 
  ''';
  print(multi_line);

  // raw string
  String raw_string = r"This is a rawstring /n";
  print(raw_string);

  // type conversions
  String strvalue = "1";
  print("Type of strvalue is ${strvalue.runtimeType}");
  int intvalue = int.parse(strvalue);
  print("Type of intvalue is ${intvalue.runtimeType}");

  String doublevalue = "4.125";
  print(double.parse(doublevalue));
  // Int to String
  print(intvalue.toString());
  // Double to Int
  print(double.parse(doublevalue).toInt());

  // Lists
  List<String> names = ["Neo", "Morpheus", "Agent"];
  List<String> names_copy = ["Neo", "Morpheus", "Agent"];
  print(names);
  print("name hashcode : ${names.hashCode}");
  print("name hashcode : ${names_copy.hashCode}");
  print("${names.hashCode == names_copy.hashCode}");
  print(names.length);
  print("${names.first}, ${names.last}");

  // Sets
  Set<String> weekday = {"Sun", "Mon", "tuesday"};
  print(weekday);
  weekday.add("tuesday"); // Trying to add a duplicate value
  weekday.add("Saturday");
  print(weekday);

  // Maps
  Map<String, String> details = {"name": "Neo", "address": "Matrix"};
  print(details);

  // var automatically finds a data type for you
  var var_name = "Neo";
  var var_age = 24;
  print("name, age using var: $var_name, $var_age");
  print(var_age.runtimeType);

  // Runes
  String value = "a";
  // returns the unicode value of a that is 97
  print(value.runes);

  // Checking the run time type
  var dictionary = {"A": "Apple", "B": "Ball"};
  print(dictionary);
  print(dictionary.runtimeType);
  print(dictionary is Map); // Nice warning : shows if it is always true

  // It is a optionally typed language - since it supports both mentioned below
  // Statitically typed language : variable type will be known at compile time
  // Dynamically typed lang: variable type will be know at run time

  // Example for statically typed
  var some_var = 50;
  //  Error: A value of type 'String' can't be assigned to a variable of type 'int'.
  // some_var = "Hello"; // this will throw an error
  print(some_var);

  // Example for dynamically typed
  dynamic dynamic_var = 50;
  print(
      "Current value of the dynamic var : $dynamic_var, Data Type : ${dynamic_var.runtimeType}");
  dynamic_var = "Hello";
  print(
      "new value of the dynamic var : $dynamic_var, Data Type : ${dynamic_var.runtimeType}");

  // This is a single line comment
  /*
  this is a multiline comment
  */

  /// This is a documentation comment
  // Check the documenation_sample.dart for an example on how to generate

  // Operators in dart
  int number1 = 10;
  int number2 = 20;

  int total_sum = number1 + number2;
  int diff = number2 - number1;
  int unary_minus = -number1;
  int mul = number1 * number2;
  double div = number2 / number1;
  int div2 = number2 ~/ number1; // Integer division: this is new to me
  int mod = number2 % number1;

  print("The addition is $total_sum");
  print("The Subtraction is $diff");
  print("The unary minus is $unary_minus");
  print("The Multiplication is $mul");
  print("The division is $div");
  print("The integer division is $div2");
  print("The modulus is $mod");

  // pre increment
  number2 = 0;
  number1 = 0;
  number2 = ++number1;
  print("Pre increment of number2 : $number2");

  // reset
  number1 = 0;
  number2 = 0;

  // post increment
  number2 = number1++;
  print("post increment of number2 is $number2");
  print("value of number1: $number1");

  // Assignment operators
  double random_age = Random().nextInt(10).toDouble();
  print(random_age);
  random_age += 1;
  random_age -= 1;
  random_age *= 1;
  random_age /= 1;
  print(random_age);

  // Relation operators
  // > < >= <= == !=

  // Logical operators
  // && || !

  // type test operators

  String some_string = "Dart";
  int some_age = 10;

  print(some_string is String);
  print(some_age is! int);

  // User input
  if (take_input) {
    String? some_name = stdin.readLineSync();
    print("you have entered $some_name");

    // Integer user input
    int? some_number = int.parse(stdin.readLineSync()!);
    // ! is a null assertion operator
    // The ! operator after stdin.readLineSync() tells Dart that you’re certain the result will not be null.
    print("you have entered the number: $some_number");

    double? some_double = double.parse(stdin.readLineSync()!);
    print("you have entered the number : $some_double");
  }

/*
| Syntax              | Meaning                                                                                   | Example                                           |
|---------------------|-------------------------------------------------------------------------------------------|---------------------------------------------------|
| `Type?`             | Declares a nullable type, allowing `null` values.                                         | `int? age; age = null;`                           |
| `object?.property`  | Null-aware access; only accesses the property if the object is not null.                  | `String? name; print(name?.length);`              |
| `variable ??= value`| Null-aware assignment; assigns `value` only if `variable` is `null`.                      | `int? score; score ??= 10;`                       |
| `expr1 ?? expr2`    | Null-coalescing operator; returns `expr1` if it’s not null, otherwise returns `expr2`.    | `String? username; print(username ?? 'Guest');`   |
| `list?[index]`      | Null-aware list access; returns `null` if `list` is `null` without throwing an error.     | `List<String>? items; print(items?[0]);`          |
*/

// Strings

  String text1 = 'This is an example of a single line string';
  String text2 = "this is an example of single line string using double quotes";
  String text3 = """This is a multiline
string using the triple quotes.
This is tutorial on dart strings
""";

  String first_name = "Peter";
  String last_name = "Parker";
  print("Using +, Full name is " + first_name + " " + last_name + ".");
  print("Using interpolation, full name is $first_name $last_name.");

// String properties
  String str = "Hi";
  print(str.codeUnits);
  print(str.isEmpty);
  print(str.isNotEmpty);
  print("The length of the string is : ${str.length}");
  print(str.toLowerCase());
  print(str.toUpperCase());
  print(str.trim());
  print(str.compareTo("Hello"));
  print(str.replaceAll("i", "e"));
  print(str.split(""));
  print(str.substring(1));
  print(str.codeUnitAt(0));
  print(some_age.toString());
  print("$str reverse is ${str.split("").reversed.join()}");

// Capitalize the first letter
  print(text1[0].toUpperCase() + text1.substring(1));

// if else same as in java, c, javascript

// asserts in dart
// dart --enable-asserts run <file_name>.dart
// Note: The assert(condition) method only runs in development mode. It will throw an exception only when the condition is false.
//If the condition is true, nothing happens. Production code ignores it.
  assert(18 == 18);

// Switch case
  switch (10) {
    case 1:
      print("this is 1");
      break;
    case 2:
      print("this is 2");
      break;
    default:
      print("I don't know this");
      break;
  }

// switch using enum
// declared outside the main function

  switch (Weather.cloudy) {
    case Weather.sunny:
      print("It's a sunny day");
      break;

    case Weather.cloudy:
      print("Keep a umbrella handy");
      break;

    default:
      print("I am not familiar with this weather");
      break;
  }

// Terenary
  print((some_age > 18) ? "older" : "younger");

// Loops
// classic C style for loop
  for (int i = 0; i < 3; i++) {
    print("Knock! Knock! neo!");
  }

// For each loop
  print("Using for each loop");
  List<String> football_players = ['ronaldo', 'messi', 'neymar', 'hazard'];
  football_players.forEach((names) => print(names));

  List<int> numbers = [1, 2, 3, 4, 5];
  int total = 0;

  numbers.forEach((num) => total = total + 1);
  print("Total is $total.");

  double avg = total / (numbers.length);
  print("The average is $avg.");

  // For in loop
  print("Iterarting using for in loop");
  for (String player in football_players) {
    print(player);
  }

  // Finding index value of the list
  print("Index value of the list");
  football_players
      .asMap()
      .forEach((index, value) => print("$value index is $index"));
  print("Getting only keys");
  print(football_players.asMap().keys);
  print("Getting only values");
  print(football_players.asMap().values);

  // Print unicode value of each string

  String foot_baller = football_players[1];
  for (var name in foot_baller.runes) {
    print("Unicode of ${String.fromCharCode(name)} is $name");
  }

  // While loop
  print("Printing 1 to 5 using while loop");
  int i = 1;
  while (i <= 5) {
    print(i);
    i += 1;
  }

  // Do While loop
  print("printing 1 to 5 using do while loop");
  i = 1;
  do {
    print(i);
    i += 1;
  } while (i <= 5);

  // break and continue
  print("breaking at 5");
  for (int i = 1; i <= 10; i++) {
    print(i);
    if (i == 5) break;
  }

  print("Continue at 5");
  for (int i = 1; i <= 10; i++) {
    print(i);
    if (i == 5) continue;
  }

  // try catch
  print("try catch");
  try {
    print(1 ~/ 0);
  } catch (ex) {
    print(ex);
  }

  print("try catch on and finally");
  try {
    print(1 ~/ 0);
  } on UnsupportedError {
    print("unsupported error");
  } catch (ex) {
    print(ex);
  } finally {
    print("this is always executed");
  }

  // Throwing new exception
  print("throwing custom exception");
  try {
    throw new Exception("some message");
  } catch (e) {
    print(e);
  }

//   Functions
// need to follow lowerCamelCase naming convention but who gives a fuck
// principal, rate, time are function parameters
// 5000, 3, 3 are function arguments
// In dart return type is automatically understood if you don't write
  calculate_interest(5000, 3, 3);

//   Different function types
// parameter and return type
  var total_value = add(2, 3);
  print("Total sum: $total");
//   parameter and no return type
  mul_func(2, 3);
//   no parameter and return type
  var greeting = greet();
  print("Greeting: $greeting");
//   no parameter and no return type
  greetings();
// Providing default value on position parameter
  print_info("John", "Male");
  print_info("John", "Male", "Mr.");
  print_info("Kavya", "Female", "Ms.");

// named parameter - this is new to me
  print_info_named(gender: "male", name: "john");
  print_info_named(name: "Neo", gender: "male");

// required parameter - this is new to me
  print_info_required(name: "Rambo", gender: "Male");

// Anonymous functions
  const fruits = ["Apple", "Mango", "Banana", "Orange"];
  fruits.forEach((fruit) {
    print("I am selling this $fruit");
  });

  var cube = (int number) {
    return number * number * number;
  };
  print("the cube of 2 is ${cube(2)}");
  print("the cube of 3 is ${cube(3)}");

// Arrow functions - short hand for single line functions
  String super_hero_name(String name) => "Super hero $name";
  print(super_hero_name("Neo"));

// Some math functions
// generate a list of random numbers
  List<int> random_list = List.generate(10, (_) => Random().nextInt(100) + 1);
  print("Some random numbers $random_list");
// Most of the math fxn names match in this language
// pow, min, max, sqrt e.t.c.

// Collections
// Creating a list
  List<int> ages = [10, 30, 33];
  List<String> games = ["ghost", "Contra", "Mario"];
  var mixed = [10, "john", 18.8, 10];

// types of list
// Fixed length list
  var list = List<int>.filled(5, 0);
  print(list);

// Growable list
  var some_list = <Object>[10, 20, 30, 40, 50];
  print("Growable list : $some_list");
//   Access item in a list
  print(some_list[1]);

// Get index by value
  print("index by value ${some_list.indexOf(20)}");

// Find length of list
  print("length of some list: ${some_list.length}");

// Changing values of a list
  some_list[2] = "I have changed it";
  print("I have changed some list ${some_list}");

// Mutable list
  List<String> manga = ["Vagabond", "Naruto"];
  print("this is some manga mutable list $manga");
// Immuatable list
  const List<String> formats = ["mp4", "mov"];
  print("Some video formats in immutable list : $formats");
// formats[1] = "you can't change shit";
  try {
    formats[1] = "you can't change this";
  } catch (e) {
    print("you tried to change an immuatable list idiot");
    print(e);
  }

// List properties
  String list_props = """
${manga.first},
${manga.last},
${manga.isEmpty},
${manga.isNotEmpty},
${manga.length},
${manga.reversed},
""";
  print(list_props);

// if the list has only single element and returns it
  List<String> single_element = ["1"];
  print("returns the single element : ${single_element.single}");

// Adding items to list
  manga.add("HxH");
  manga.addAll(["Blue period", "Dragon ball", "Noragami"]);
  print(manga);
// insert at specific place
  manga.insert(3, "One piece");
  manga.insertAll(4, ["black clover", "sakamoto desuka"]);
  print("Insert at indexes : $manga");
// replace range
  manga.replaceRange(1, 2, ["Naruto Shippuden"]);
  print("replace range: $manga");
// similary we can remove shit
// remove, removeAt, removeLast, removeRange

// Loops in list
  manga.forEach((manga) => print("Did you read $manga"));
  List<int> super_numbers = [1, 2, 3, 4, 5, 6];
  Iterable<int> nums_2 = super_numbers.map((num) => num * 2);
  print("multiplied 2 : $nums_2");

// combine two lists
  var combined = [...super_numbers, ...manga];
  print("Combined list : $combined");

//  If conditions in list
// become randomly sad just like irl :(
  bool sad = Random().nextBool();
  var cart = ['milk', 'ghee', if (sad) 'Beer'];
  print("if conditions in list $cart");

// where in list
  var even = super_numbers.where((num) => num.isEven).toList();
  print("some even numbers using where $even");

// Sets
  Set<String> set_manga = manga.toSet();
// We have some related properties same like List
// first, last, isEmpty, isNotEmpty, length
  print("does it contain naruto ${set_manga.contains("Naruto")}");

// Similarly we have add, remove, addAll

// clear set
  print("Clearing the set_manga : $set_manga");
  set_manga.clear();
  print("Cleared set : $set_manga");

  Set<String> new_manga = {"blue bird", "berserk", "naruto", "HxH"};
  print("Diff ${new_manga.difference(manga.toSet())}");
  print("Intersection ${new_manga.intersection(manga.toSet())}");
//   Element at
  print("The element at : ${new_manga.elementAt(0)}");

//   Maps
  Map<String, String> country_capital = {
    'India': 'New delhi',
    'Japan': 'tokyo',
    'Russia': 'moscow'
  };
  print("Country and capitals: $country_capital");
// what is the capital of Japan
  print(country_capital['Japan']);
// some other properties : keys, values, isEmpty, isNotEmpty, length
  Map<String, double> expenses = {
    'sun': 3000.0,
    'mon': 3000.0,
    'tue': 3234.0,
  };

  print("All keys of Map: ${expenses.keys}");
  print("All values of Map: ${expenses.values}");
  print("Is Map empty: ${expenses.isEmpty}");
  print("Is Map not empty: ${expenses.isNotEmpty}");
  print("Length of map is: ${expenses.length}");

// Updating
  expenses['sun'] = 1000;
  print("Updated expenses : $expenses");

  print("All keys of Map: ${expenses.keys}");
  print("All values of Map: ${expenses.values}");

  // With List
  print("All keys of Map with List: ${expenses.keys.toList()}");
  print("All values of Map with List: ${expenses.values.toList()}");
  print("Does Map contain key sun: ${expenses.containsKey("sun")}");
  print("Does Map contain key abc: ${expenses.containsKey("abc")}");

  // For Values
  print("Does Map contain value 3000.0: ${expenses.containsValue(3000.0)}");
  print("Does Map contain value 100.0: ${expenses.containsValue(100.0)}");

// Looping Map
  for (var expense in expenses.entries) {
    print(expense.key + " " + expense.value.toString());
  }
  print("Looping using for Each");
  expenses.forEach(
      (key, value) => print("the key is $key and the value is $value"));

// removeWhere
  Map<String, double> mathMarks = {
    "ram": 30,
    "mark": 32,
    "harry": 88,
    "raj": 69,
    "john": 15,
  };
  mathMarks.removeWhere((key, value) => value < 32);
  print(mathMarks);

//   we can use where in list, set, map to filter specific items
  List<int> where_numbers = [2, 4, 6, 8, 10, 11, 12, 13, 14];
  List<int> odd_numbers = where_numbers.where((num) => num.isOdd).toList();
  print("Using where to get odd numbers : $odd_numbers");

  print("Filter days with S");
  List<String> days = [
    "Sunday",
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday"
  ];

  List<String> startWithS =
      days.where((element) => element.startsWith("S")).toList();

  print(startWithS);
  mathMarks.removeWhere((key, value) => value < 32);
  print(mathMarks);

// File handling
// Reading file
  File file = File("matrix.txt");
  String contents = file.readAsStringSync();
  print(contents);
// Get File info
  print("File path ${file.path}");
  print("File absolute path ${file.absolute.path}");
  print("File size ${file.lengthSync() / 1024}");
  print("Last modified: ${file.lastModifiedSync()}");

// Reading a CSV file
  File csv_file = File("sample.csv");
  String csv_content = csv_file.readAsStringSync();
  print(csv_content);
// Splitting them into lines
  List<String> lines = csv_content.split("\n");
  print('---------------------');
  for (String line in lines) {
    print(line);
  }

// Read only a part of the file
  String some_lines = csv_content.substring(0, csv_content.indexOf("\n"));
  print("Reading only 1st line " + some_lines);

// Write file
  File write_file = File("dodge_bullets.txt");
  write_file.writeAsStringSync(
      "Neo: What are you trying to tell me? That I can dodge bullets?");
  print("data written into ${write_file.path}");

// append to fle
  write_file.writeAsString(
      "\nMorpheus: No, Neo. I'm trying to tell you that when you're ready, you won't have to.",
      mode: FileMode.append);
  print("appended text into ${write_file.path}");

// Writing a csv
  if (take_input) {
    File csv_writer = File("manga.csv");
    csv_writer.writeAsStringSync("Name, Character\n");

    for (int i = 0; i < 3; i++) {
      stdout.write("Enter name of the manga ${i + 1}:");
      String? manga_name = stdin.readLineSync();
      stdout.write("Enter the name of the character ${i + 1}:");
      String? manga_character = stdin.readLineSync();
      csv_writer.writeAsStringSync('$manga_name,$manga_character\n',
          mode: FileMode.append);
    }
  }

// Delete a file
  print("creating secrets.txt");
  File("secrets.txt").createSync(recursive: false);
  File secret_file = File("secrets.txt");
  print("waiting for one second for you to observe");
  sleep(const Duration(seconds: 1));
  secret_file.deleteSync();
  print("Gone! dissappeared into thin air");

// Well, Well, Well, we into OOPS now ain't we (in Butcher's voice)
// Check the classes.dart for class implementations
// Features of OOPS
// Class
// Object
// Encapsulation
// Inheritance
// Polymorphism
// Abstraction

// The new keyword can be used to create a new object, but it is unnecessary.
  Animal octopus = Animal();
  octopus.name = "oswald";
  octopus.number_of_legs = 8;
  octopus.life_span = 5; // best case
  octopus.display();

// Parameterized Constructor
  Student student = Student("Neo", 1000, 1);
  student.display();

// Named constructor
  Chair chair = Chair(color: "Blue", name: "Ergo");
  chair.display();

// Constructor with default values
  Table table = Table();
  print("Initializing with default values");
  table.display();

// Default constructor
  Laptop laptop = Laptop();

// Named constructor
  Mobile mobile = Mobile.custom_constructor("Apple", "Titanium Black");
  mobile.display();

//  some json stuff
  Person person = Person("Neo", 1000);
  Person person_json_string =
      Person.from_json_string('{"name":"neo", "age":1000}');
  print("From json string");
  person_json_string.display();
  Person person_json = Person.from_json({'name': "Neo", 'age': 1000});
  print("From map json");
  person_json.display();

// constant constructor
// p1 and p2 has the same hash code
  print("Using const constructor");
  Point p1 = const Point(0, 0);
  print("p1 hash code : ${p1.hashCode}");

  Point p2 = const Point(0, 0);
  print("p2 hash code : ${p2.hashCode}");

// without using const this has different hash code
  print("Not using const constructor");
  Point p3 = Point(1, 1);
  print("p3 hash code : ${p3.hashCode}");
  Point p4 = Point(1, 1);
  print("p4 hash code : ${p4.hashCode}");

  const Car car = Car(name: "BMW", model: "XS", price: 5000000);
  car.display();

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

  Encap_Employee encap_employee = Encap_Employee();
  encap_employee.set_id(1);
  encap_employee.set_name("neo");
  encap_employee.display();
  encap_employee.set_id(2);
  encap_employee.set_name("Naruto");
  encap_employee.display();

// encap_employee._id = 5;
/*
The above line will not work because 
 1. prefixing _ will make it private
 2. the class must be in an other file
 3. If the class is in the same file then we can modify
 4. Private property can only be accessed from the same library
 5. It is library private not class private
*/

// Short hand setters and getters
  Encap_Vehicle encap_vehicle = Encap_Vehicle();
  print("Short hand getters and setters");
  encap_vehicle.model = "Tesla";
  encap_vehicle.year = 2015;
  print(encap_vehicle.model);
  print(encap_vehicle.year);
  Encap_Notes encap_notes = Encap_Notes("ClassMate", 50);
  print(encap_notes.name + " " + encap_notes.price.toString());
  encap_notes.name = "Lepakshi";
  encap_notes.price = 10.0;
  print(encap_notes.name + " " + encap_notes.price.toString());
  print(encap_notes.custom_map);
//   Throws exception
//   Encap_Notes encap_notes_new = Encap_Notes("ClassMate", -1.0);
  Encap_Notes encap_notes_new = Encap_Notes("ClassMate", 100);
  print(encap_notes_new.price);
//   Throws exception
//   encap_notes_new.price = -1;

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
// Check the inheritance.dart for inheritance related classes
  print("Single inheritance");
  var inherit_student = inherit.Student();
  inherit_student.name = "Nara Shikamaru";
  inherit_student.age = 18;
  inherit_student.school_name = "Konoha Ninja School";
  inherit_student.school_address = "Konoha Hidden Leaf";
  inherit_student.display();
  inherit_student.display_school_info();

  print("Multilevel inheritance");
  inherit.Model3 model3 = inherit.Model3();
  model3.name = "Tesla Model 3";
  model3.price = 50000.0;
  model3.color = "Red";
  model3.display();

  print("Hierarchical inheritance");
  inherit.Triangle triangle = inherit.Triangle();
  triangle.diameter1 = 10;
  triangle.diameter2 = 12;
  print("Triangle Area " + triangle.area().toString());

  inherit.Rectangle rectangle = inherit.Rectangle();
  rectangle.diameter1 = 2;
  rectangle.diameter2 = 2;
  print("Rectangle Area: ${rectangle.area()}");

  // Constructor Inheritance
  print("parent constructor and child constructor is called");
  inherit.Macbook macbook = inherit.Macbook();

  // Constructor Inheritance with parameters
  inherit.Apple apple = inherit.Apple("iPhone 15", "Titanium Black", "AI");
  apple.display();

  // Polymorphism
  // check the polymorph.dart for class implementations
  print("Overriding Animal eat() method");
  polymorph.Dog poly_dog = polymorph.Dog();
  poly_dog.eat();

  // Static variable
  Counter count = Counter();
  for (int i = 0; i < 3; i++) count.get_count();

  // Static method
  print("Simple interest using static method");
  print(SimpleInterest.calc_si(1000, 2, 2));

  // Enums
  // declared outside the function, as they should be
  // enum Days { Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday}
  for (var day in Days.values) {
    print(day);
  }

  // Enhanced Enum
  CompanyType partnership = CompanyType.partnership;
  print(partnership.text);

  // Abstraction
  // Check abstract.dart for class implementation
  abstract_c.SBI sbi = abstract_c.SBI("SBI", 8.5);
  sbi.display();
  sbi.interest();
  abstract_c.ICICI icici = abstract_c.ICICI("ICICI", 9);
  icici.display();
  icici.interest();

  // Interfaces
  // refer interface.dart for interface class implementations

  // Mixins
  // refer mixin.dart for mixin implementations

  // Factory Constructors
  // refer classes.dart for factory constructor implementations

  // Generics
  // refer generics.dart

/*
Null Safety

- Write Safe code
- Reduce the chances of app crashes
- easy to find and fix bugs in code

Avoids null errors, runtime bugs, vulnerabilities and system crashes

In Dart variables are non-nullable by default

If you want to provide null we can use the ? operator
*/

  String? nullable_var;
  String non_nullable_var;
  nullable_var = null;
// non_nullable_var = null; - this will throw an error

/*
How to use nullable variables?
- use if statement to check if the var is null
- use ! operator which returns null if the var is null
- use ?? to assign a default value if the var is null
*/
  String? movie_name;
  movie_name = "Matrix";
  movie_name = null;
  if (movie_name == null) print("movie_name is null");
  String movie_name1 = movie_name ?? "Edge of Tomorrow";
  print(movie_name1);
  /*
    movie_name!: The ! operator, also known as the null assertion operator, asserts 
    that the value of movie_name is not null at runtime. By using movie_name!, you are telling Dart to treat movie_name 
    as non-nullable, even if it was originally declared as nullable (String?).

    If movie_name is not null, movie_name2 will be assigned that value without any issues.
    If movie_name is null, the code will throw a runtime exception (Null check operator used on a null value), 
    causing the program to crash.
  */
//   String movie_name2 = movie_name!; - this will throw an error
//   print(movie_name2);

// List of nullable ints
  List<int?> items = [1, 2, null, 4];
  print(items);

// type promotion
/*
Dart automatically converts a value of one type to another type
dart does this when it knows that the value is a specific type

How type promotion works?
general types -> specific subtypes
nullable types -> non-nullable types

*/
  Object some_name = "Neo";
// print(some_name.length); will not work because dart doesn't know that name is string
  if (some_name is String) print("The length of name is ${some_name.length}");
// some_name is promoted to String

// result is a string which is null if it is uninitialized
  String result;
// result is promoted to a non-nullable type string
  if (DateTime.now().hour < 12)
    result = "Good Morning";
  else
    result = "Good Afternoon";
  print("Result is $result");
  print("Length of the result is ${result.length}");
  print_length("Hello");
  /*
when you put late infront of a variable declaration, you tell Dart the following
- Don't assign that variable a value yet
- You will asign value later
- You will make sure the variable has a value before you use it

Dart will throw an error if you use the variable before you assign it

The Late keywordhas two cases:
 - Declaring a non-nullable variable or field that is not initialized 
    at the point of declarion
 - Lazy Initialization of a variable or field

What is Lazy initialization
It is a design pattern that delays the creation of an object, the calculation
of a value, or some other expensive process until the first time you need it

Using late means dart doesn't initialize value right way, it only initializes
when you access it for the first time. This is also called Lazy loading.
*/
  late String late_var;
  late_var = "son";
  print(late_var);
  Late_Example late_example = Late_Example();
// late var initialized here
  late_example.name = "Neo";
  late_example.id = "blue pill";
//   late_example.id = "red pill"; This will throw an error because it is already initialized
  late_example.greet();

  String provide_country(String country) {
    print("function is called");
    return "Hello I am from $country";
  }

// the provide_country function is called only when the random_country is used
// Lazy initialization is used to avoid unnecessary computation
  print("Before the late call");
  late String random_country;
  late String country_name = provide_country(random_country);
  random_country = "Japan";
  print("After the late call");
  print(country_name);

// refer asynchronous.dart for code implementation
// refer streams.dart for code
}

// Promotion with nullable to non-nullable type
// because we are covering the case of null also
void print_length(String? text) {
  if (text == null) throw Exception("The text is null");
  print("Length of the text is ${text.length}");
}

// late keyword in class
class Late_Example {
  late String name;
  late final String id;

  void greet() {
    print("Hello $name, follow the white rabbit🐰");
    print("your ID is $id, once set you can't go back");
  }
}
