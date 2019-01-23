import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_app/src/navigation/GFNavigationBar.dart';
import 'package:flutter_app/src/pages/Home.dart';
import 'package:flutter_app/src/pages/ProductDetail.dart';
import 'package:flutter_app/src/pages/Search.dart';
import 'package:flutter_app/src/pages/Todo.dart';
import 'package:flutter_app/src/pages/Mine.dart';
import 'package:flutter_app/src/pages/Login.dart';


class MainPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return MainPageState();
  }
}

class MainPageState extends State<MainPage> {

  /// -1: 登录页
  /// 0,1,2,3: tab页面
  int currentIdx = 0;

  @override
  void initState() {
    currentIdx = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<StatelessWidget> _bodys = [
      Home(),
      ProductDetail('搜索'),
      ProductDetail('待办'),
      ProductDetail('我的'),
    ];

    if (currentIdx < 0) {
      return Login();
    }
    var bottomNavigationBar = BottomNavigationBar(
      items: _createItems(),
      currentIndex: currentIdx ,
      onTap: (idx) => _tap(idx),
      type: BottomNavigationBarType.fixed,
    );
    var _mainPage = Scaffold(
      appBar: (currentIdx == 0) ? GFNavigationBar(title: Text('建方长租')) : null,
      body: _bodys[currentIdx],
      bottomNavigationBar: bottomNavigationBar,
    );
    return _mainPage;
  }

  _tap(int idx) {
    setState(() {
      currentIdx = idx;
    });
  }

  List<BottomNavigationBarItem> _createItems() {

    var list = List<BottomNavigationBarItem>();
    list.add(_createItem('首页', Icon(Icons.home)));
    list.add(_createItem('搜索', Icon(Icons.search)));
    list.add(_createItem('待办', Icon(Icons.notifications_none)));
    list.add(_createItem('我的', Icon(Icons.person)));
    return list;
  }

  BottomNavigationBarItem _createItem(title, Icon icon) {
    return BottomNavigationBarItem(icon: icon,title: Text(title));
  }
}
