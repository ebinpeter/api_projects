import 'package:api_intergration/api.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Screenhome(),
    );
  }
}

class Screenhome extends StatefulWidget {
  @override
  State<Screenhome> createState() => _ScreenhomeState();
}

class _ScreenhomeState extends State<Screenhome> {
  @override
  final numbercontroll = TextEditingController();

  String _result = "type a number a get result";

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: numbercontroll,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Number'),
                ),
              ),
            ),
            Center(
              child: ElevatedButton(
                  onPressed: () async {
                    final _number = numbercontroll.text;

                    final _num = await getnumber(number: _number);
                    print(_num.text);
                    setState(() {
                      _result = _num.text ?? 'No trivia faound';
                    });
                  },
                  child: Text("Get Result")),
            ),
            Text(_result)
          ],
        ),
      ),
    );
  }
}
