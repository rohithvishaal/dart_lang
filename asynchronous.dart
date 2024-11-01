/*
Asynchronous programming = allows a program to do multiple tasks at the same time.
Time consuming operations like fetching data from the internet, writing to a database,
reading from a file and downloading a file can be performed without blocking the main thread

Synchronous = executed line by line, one at a time

To Perform asynchronous operations in dart you can use the Future class, async and await keywords

asynchronous operations mentioned above sometimes may take long times to complete,
so it usually provides results in form of a Future.
If the result has multiple parts, then it provides as a Stream

The Future represents a value or error that is not yet available.
It is used to represent a potential value, or error, that will be available at some time in future.
*/

// you can create a future in dart by using Future class.
Future<String> get_user_name() async {
  // Future.value('Future Neo'); // Will return Future<String> immediately
  return Future.delayed(Duration(seconds: 1), () => 'Future Neo');
}

/*
Future represents the result of asynchronous operation and can have two states
  - Uncompleted = future is waiting for the function async operation to finish or throw an error
  - Completed = future is completed with either value or error, Future<int> produces int, Future<String> produces String
                Future<void> if the future doesn't produce any value
*/

/*
async/await allows us to write asynchronous code that looks and behaves like synchronous code
when a future is marked async  it will carry out ops that could take some time and will return a Future object

await keyword allows you to delay the execution of an async function until the awaited Future has finished

you can use async keyword before a function to make it asyncronous
you can use await keyword to get the completed result of the asynchronous expression (works only in asynchronous function)
*/
Future<String> from_future() {
  return Future.delayed(Duration(seconds: 1), () => "From the future");
}

void get_data() async {
  String data = await from_future();
  print(data);
}

void do_time_pass() async {
  return Future.delayed(Duration(seconds: 5), () => print("time pass done"));
}

void main() {
  print("First Operation");
  Future.delayed(Duration(seconds: 2), () => print("Second big operation"));
  print("Thrid Operation");
  print("Last Operation");
  print("Start async function");
  do_time_pass();
  get_data();
  print("End async function");
  get_user_name().then((onValue) => print(onValue));
}
