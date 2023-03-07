import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> prods; //this is a variable

  Products(this.prods); //this is passing the varibale as an argument into the

  @override
  Widget build(BuildContext context) {
    return Column(
        children: prods
            .map(
              (product) => Card(
                child: Column(
                  children: [Image.asset('assets/meal.jpg'), Text(product)],
                ),
              ),
            )
            .toList());
  }
}
