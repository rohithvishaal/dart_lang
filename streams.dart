/*
A stream is a sequence of asynchronous events representing multiple values that will arrive in the future
Stream Class deals with sequences of events instead of single events
Stream has one or more listiners, and all listners will receive the same value

Stream is like a pipe that emits events, you put a value on one end, and
if there's a listner on the other end it will receive that value

These events can be values of any type. errors or a "done" event to signal the end of the stream

        Single Value 	Zero or more values
-----------------------------------------
Sync 	  int 	        Iterator
-----------------------------------------
Async 	Future<int> 	Stream<int>
-----------------------------------------
*/

import 'dart:async';
import 'dart:math';

Stream<String> get_user_name() async* {
  await Future.delayed(Duration(seconds: 1));
  yield "Neo";
  await Future.delayed(Duration(seconds: 1));
  yield "Morpheus";
  await Future.delayed(Duration(seconds: 1));
  yield "Trinity";
  // we can also use the below immediately
  // Stream.fromIterable(['Neo', 'Morpheus', 'Trinity']);
}

void main() async {
  // you can use stream in dart using await for loop
  await for (dynamic name in get_user_name()) {
    print(name);
  }

/*
| Future                                                                | Stream                                                         |
|:---------------------------------------------------------------------:|:--------------------------------------------------------------:|
| Future represents the value or error that is supposed to be available | Stream is a way by which we receive a sequence of events.      |
| in the Future.                                                        |                                                                |
| A Future can provide only a single result over time.                  | Stream can provide zero or more values.                        |
| You can use FutureBuilder to view and interact with data.             | You can use StreamBuilder to view and interact with data.      |
| It can’t listen to a variable change.                                 | But Stream can listen to a variable change.                    |
| Syntax: Future `<data_type>` class_name                               | Syntax: Stream `<data_type>` class_name                        |

Types of streams
  - Single subscription streams (default)
  - Broadcast streams

single sub streams
 - hold onto values until one subs and can only be listened to once
 - you will get an exception once you try to listen more than once
 - any event's value should not be missed and must be in correct order
 - inside stream controller there is only one stream and only one subscriber can use that stream

Broadcast streams
 - set up for multiple subs
 - hold onto values until subs can only listen many times
 - if you want more objects to listen to the stream
 - for example : It can be used for mouse events in a browser
 - many streams can be used by many subscribers;
 - for example : watching videos on such streams at any time and more than one subscriber can watch the video simultaneously
 - similary you can watch again after cancelling previous subscription

Types of classes in stream
Stream : represents an asynchronous stream of data

EventSink : It is like a stream that flows in the opposite direction.

StreamController : it simplifies stream management, automatically creating a stream and sink
and also providing methods for controlling a stream's behaviour

StreamSubscription : It saves the references of the subscription and allows them to pause,
resume or cancel the flow of the data they receive
*/

  final StreamController<int> controller = StreamController.broadcast();
  int count = 0;
  void generate_random_numbers() async {
    while (count != 5) {
      count++;
      await Future.delayed(Duration(seconds: 1));
      final random_number = Random().nextInt(100);
      controller.sink.add(random_number);
    }
  }

  generate_random_numbers();

  StreamSubscription subscription = controller.stream.listen((value){
    print("Received Value: $value");
  });

  Future.delayed(Duration(seconds: 10), (){
    subscription.cancel();
    controller.close();
    print("Stream closed");
  });
}
