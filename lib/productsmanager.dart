import 'package:flutter/material.dart';

import './products.dart';

class ProductsMgr extends StatefulWidget {
  final String initProds;
  ProductsMgr({this.initProds = "test product"});

  @override
  State<ProductsMgr> createState() => _ProductsMgrState();
}

class _ProductsMgrState extends State<ProductsMgr> {
  final List<String> _prods = [];

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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          child: ElevatedButton(
              onPressed: () {
                setState(() {
                  _prods.add("added this");
                });
              },
              child: const Text('Add new')),
        ),
        Products(_prods)
      ],
    );
  }
}
