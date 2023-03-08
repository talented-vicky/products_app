import 'package:flutter/material.dart';

import './products.dart';
import 'products_ctrl.dart';

/*
  this widget (file) should hold the state since it has acces to all the 
  widgets, either the ones that change it (like "productCtrl") or require/need 
  the widget state, which is the changing data (like the "Products")
  --- known as state lifting
 */

class ProductsMgr extends StatefulWidget {
  final String initProds;

  ProductsMgr({this.initProds = "test product"});

  @override
  State<ProductsMgr> createState() => _ProductsMgrState();
}

class _ProductsMgrState extends State<ProductsMgr> {
  final List<String> _prods = [];
  // recall const (used on R.H.S) ensures a value can never be changed while
  // final (used on L.H.S) ensures a new value cannot be re-assigned

  @override
  void initState() {
    // this is called whenever ProductMgr is initialized or drawn onto the screen
    _prods.add(widget.initProds);
    // widget provided by the "State" object and gives access to the connected stateful widget
    // so when build runs for the first time, the initState method would've been executed
    super.initState();
    // note we didn't call setState because initState is already a state before build runs
  }

  @override
  void didUpdateWidget(ProductsMgr oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  void _addProd(String prod) {
    setState(() {
      _prods.add(prod);
    });
    // all void funtions return nothing and can only be accessed by the class
    // in which they are passed hence named with an underscore, the same reason
    // ProductsMgrState has an underscore as a prefix ensuring its
    // method (functions) and properties (variables) cannot be imported or
    // directly accessed by an external class
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: const EdgeInsets.only(top: 10, bottom: 15),
            child: ProductsCtrl(_addProd)),
        Products(_prods)
      ],
    );
  }
}
