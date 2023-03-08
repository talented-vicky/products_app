import 'package:flutter/material.dart';

class ProductsCtrl extends StatelessWidget {
  final Function addProd;

  ProductsCtrl(this.addProd);
  // hence this class expects an argument (bound to the property defined
  //above) and must be a function

  // the above translates to us having access to a function in this widget
  // although it's not defined in this widget (sweet yeah!)

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          addProd("another products is ready dropped");
        },
        child: const Text('Add new'));
  }
}
