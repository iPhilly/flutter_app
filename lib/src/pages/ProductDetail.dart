import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {

  String text;

  ProductDetail(String text) {
    this.text = text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(text),),
      body: Center(child: Text(text)),
    );
  }

}
