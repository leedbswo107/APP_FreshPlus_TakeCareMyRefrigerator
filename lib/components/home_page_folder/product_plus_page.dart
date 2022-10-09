import 'package:flutter/material.dart';

class ProductPlusPage extends StatelessWidget {
  const ProductPlusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'test page',
        style: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  
  }
}