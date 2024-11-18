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

// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('ListView Example')),
//         body: ListView(
//           children: List.generate(20, (index) {
//             return ListTile(
//               title: Text('Item ${index + 1}'),
//             );
//           }),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController _num1Controller = TextEditingController();
  final TextEditingController _num2Controller = TextEditingController();
  double _result = 0;

  void _calculateSum() {
    setState(() {
      double num1 = double.tryParse(_num1Controller.text) ?? 0;
      double num2 = double.tryParse(_num2Controller.text) ?? 0;
      _result = num1 + num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Calculator')),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                  controller: _num1Controller,
                  decoration: InputDecoration(labelText: 'Enter first number')),
              TextField(
                  controller: _num2Controller,
                  decoration:
                      InputDecoration(labelText: 'Enter second number')),
              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: _calculateSum, child: Text('Calculate Sum')),
              SizedBox(height: 20),
              Text('Result: $_result', style: TextStyle(fontSize: 24)),
            ],
          ),
        ),
      ),
    );
  }
}
