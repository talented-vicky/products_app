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
                margin: const EdgeInsets.only(left: 80, right: 80, bottom: 5),
                elevation: 6,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Image.asset('assets/meal.jpg', height: 250),
                    ),
                    Text(product),
                  ],
                ),
              ),
            )
            .toList());
  }
}
