import 'package:flutter/material.dart';

import './productsmanager.dart';

/*
void main() {
  runApp(MyApp());
  // return "this will not return";
} // void means it's a method that returns nothing
 */
void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override //this tells we're overidng already defined methods in StatelessWidget with the code in build(){}
  Widget build(BuildContext context) {
    //types are necessary build => widget, context => BuildContext
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Welcome onboard!"),
        ),
        body: const ProductsMgr(),
      ),
    );
  }
}
