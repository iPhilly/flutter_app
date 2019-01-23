import 'package:flutter/material.dart';
import 'package:flutter_app/src/pages/Home.dart';
import 'package:flutter_app/src/pages/Login.dart';
import 'package:flutter_app/src/pages/MainPage.dart';
import 'package:flutter_app/src/pages/Mine.dart';
import 'package:flutter_app/src/pages/ProductDetail.dart';
import 'package:flutter_app/src/pages/Search.dart';
import 'package:flutter_app/src/pages/Todo.dart';

void main() {

  var routes = <String, WidgetBuilder> {
    '/': (BuildContext context) => MainPage(),
    '/login': (BuildContext context) => Login(),
    '/productDetail': (BuildContext context) => ProductDetail('商品详情页'),
  };

  runApp(new MaterialApp(
    routes: routes,
    theme: ThemeData(
      primarySwatch: Colors.blueGrey,
    ),
  ));
}
