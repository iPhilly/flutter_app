library flutter_app.src.src.pages.Home;
import 'package:flutter/material.dart';
import 'package:flutter_app/src/navigation/GFNavigationBar.dart';
import '../utils/HttpUtil.dart';

class Home extends StatelessWidget {

  BuildContext _context;
  
  @override
  Widget build(BuildContext context) {
    _context = context;
    var imageUrl = 'https://img.mukewang.com/5c18cf540001ac8206000338-240-135.jpg';
    // Material 是UI呈现的“一张纸”
    var longText = '首页';

    var listView = new ListView(
      children: <Widget>[
        Image.network(imageUrl),
        RaisedButton(child: Text('点我啊'), onPressed: (){ click();} ),
        ListTile(title: Text(longText),subtitle: Text(longText),selected: true,isThreeLine: false),
        ListTile(title: Text('cell标题'),subtitle: Text(longText),selected: false,enabled: false,contentPadding: EdgeInsets.all(20),),
        ListTile(title: Text('cell标题232'),subtitle: Text('副标题'),selected: false,)
      ],
    );

    return listView;
  }

  
  click() {
//    Navigator.of(_context).pushNamed('/productDetail');
    HttpUtil().get('https://httpbin.org/ip');
  }
}