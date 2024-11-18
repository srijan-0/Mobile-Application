// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('Hello World App')),
//         body: Center(child: Text('Hello, World!')),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('Counter App')),
//         body: Center(
//           child: Text('Counter: $_counter', style: TextStyle(fontSize: 24)),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: _incrementCounter,
//           child: Icon(Icons.add),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('ListView Example')),
        body: ListView(
          children: List.generate(20, (index) {
            return ListTile(
              title: Text('Item ${index + 1}'),
            );
          }),
        ),
      ),
    );
  }
}
