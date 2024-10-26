import 'dart:io';
import 'dart:math';

bool take_input = false;
enum Weather {
  sunny, 
  snowy, 
  cloudy, 
  rainy
}
void main(){

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
  Map<String, String> details = {
    "name" : "Neo",
    "address" : "Matrix"
  };
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
  var dictionary = {"A":"Apple", "B":"Ball"};
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
  print("Current value of the dynamic var : $dynamic_var, Data Type : ${dynamic_var.runtimeType}");
  dynamic_var = "Hello";
  print("new value of the dynamic var : $dynamic_var, Data Type : ${dynamic_var.runtimeType}");

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
  int mod = number2%number1;

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
  print(some_age is !int);

  // User input
  if(take_input){
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
switch(10){
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

switch(Weather.cloudy) {
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
print( (some_age > 18) ? "older" : "younger");

// Loops
// classic C style for loop
for(int i=0; i < 3; i++){
  print("Knock! Knock! neo!");
}

}