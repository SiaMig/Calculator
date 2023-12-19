import 'package:flutter/material.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      title: "Calculator",
      home: const SimpleCalculator(),
    );
  }
}

class SimpleCalculator extends StatefulWidget {
  const SimpleCalculator({super.key});

  @override
  State<SimpleCalculator> createState() => _SimpleCalculatorState();
}

class _SimpleCalculatorState extends State<SimpleCalculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: const Text("Calculator"),),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerRight,
            //  used to provide space around a specific widget element [Padding]
          padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: const Text("0", 
            style: TextStyle(fontSize: 38),),
          ),
          Container(
            alignment: Alignment.centerRight,
            //  used to provide space around a specific widget element [Padding]
          padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
            child: const Text("0", 
            style: TextStyle(fontSize: 48),),
          ),
        ],
      ),
    );
  }
}
void main(){
  runApp(const MyApp());
}