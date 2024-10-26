/// A simple Dart program demonstrating the use of documentation comments.
///
/// This program defines a [Calculator] class with methods for addition,
/// subtraction, multiplication, and division.
// dart create <app_name>
// dart doc <app_name_dir> generates by default in api/doc
void main() {
  Calculator calc = Calculator();
  print(calc.add(3, 5)); // Output: 8
  print(calc.subtract(10, 4)); // Output: 6
  print(calc.multiply(2, 6)); // Output: 12
  print(calc.divide(12, 3)); // Output: 4.0
}

/// A [Calculator] class that performs basic arithmetic operations.
class Calculator {
  /// Adds two numbers [a] and [b] and returns the result.
  int add(int a, int b) => a + b;

  /// Subtracts [b] from [a] and returns the result.
  int subtract(int a, int b) => a - b;

  /// Multiplies two numbers [a] and [b] and returns the result.
  int multiply(int a, int b) => a * b;

  /// Divides [a] by [b] and returns the result as a double.
  ///
  /// Throws an [ArgumentError] if [b] is zero.
  double divide(int a, int b) {
    if (b == 0) throw ArgumentError("Cannot divide by zero");
    return a / b;
  }
}
