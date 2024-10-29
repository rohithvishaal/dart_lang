import 'dart:io';
import 'dart:math';

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
void print_info(String name, String geneder, [String title = "sir/ma'am"]) {
  print("Hello $title $name your gender is $geneder");
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
}
