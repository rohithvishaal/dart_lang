/*
Generics is a way to create a class or function that can work with different
types of data.

If you look at the internal implementation of List class, it is a generic class
List<int>, List<String>, List<double>
*/

// Without using generics

import 'dart:math';

class IntData {
  int data;
  IntData(this.data);
}

class DoubleData {
  double data;
  DoubleData(this.data);
}

// Using Generics
class Data<T> {
  T data;
  Data(this.data);
}

// Generic Type Variables
// T - Type
// E - Element
// K - Key
// V - Value

// Generic class with restriction
// In the example below, there is a Data class that works only with int and double
class DataBound<T extends num> {
  T data;
  DataBound(this.data);
}

// generic functions
double getAverage<T extends num>(T value1, T value2) {
  return (value1 + value2) / 2;
}

abstract class Shape {
  double get area;
}

class Circle extends Shape {
  final double radius;
  Circle(this.radius);

  @override
  double get area => pi * radius * radius;
}

class Rectangle extends Shape {
  final double width;
  final double length;

  Rectangle(this.width, this.length);

  @override
  double get area => length * width;
}

// Generic class Region
class Region<T extends Shape> {
  List<T> shapes;
  Region({required this.shapes});

  double get total_area {
    double total = 0;
    shapes.forEach((shape) {
      total += shape.area;
    });
    return total;
  }
}

void main() {
  IntData int_data = IntData(10);
  DoubleData double_data = DoubleData(10.5);
  print("IntData: ${int_data.data}");
  print("DoubleData: ${double_data.data}");

  Data<int> intData = Data<int>(10);
  Data<double> doubleData = Data<double>(10.5);
  print(
      "Using generics\nintData : ${intData.data}\ndoubleData: ${doubleData.data}");
  DataBound<int> intDataBound = DataBound<int>(10);
  DataBound<double> doubleDataBound = DataBound<double>(10.5);
  print("Using data bounds");
  print(intDataBound.data);
  print(doubleDataBound.data);
  print("Average of int: ${getAverage<int>(10, 20)}");
  print("Average of double: ${getAverage<double>(10.5, 20.5)}");
  var circle = Circle(10);
  var rectangle = Rectangle(10, 20);
  // create a list of Shape objects
  var region = Region(shapes: [circle, rectangle]);
  // print the total area
  print("Total Area of Region: ${region.total_area}");
}
