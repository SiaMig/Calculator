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
      body:Column(
     crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.centerRight,
            padding:const EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: const Text("0", style: TextStyle(fontSize: 40),),
          ),
          Expanded(child: 
          Container(alignment: Alignment.centerRight,
            padding:const EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: const Text("/", style: TextStyle(fontSize: 20),),

          ))
        ],
   

        ),
   
  );}
}
void main(){
  runApp(const MyApp());
}