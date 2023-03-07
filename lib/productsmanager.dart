import 'package:flutter/material.dart';

import './products.dart';

class ProductsMgr extends StatefulWidget {
  const ProductsMgr({super.key});

  @override
  State<ProductsMgr> createState() => _ProductsMgrState();
}

class _ProductsMgrState extends State<ProductsMgr> {
  final List<String> _prods = ['food demo'];

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
