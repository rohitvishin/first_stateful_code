import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// write stf and press tab
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // ignore: non_constant_identifier_names
  int _a = 0;
  // ignore: non_constant_identifier_names
  void Counter() {
    if (_a > 5)
      _a = 0;
    else
      _a++;
    print(_a);
    setState(() {});
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        child: Scaffold(
          body: Column(
            children: [
              Text('$_a'),
              ElevatedButton(
                onPressed: Counter,
                child: Text("Button"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
