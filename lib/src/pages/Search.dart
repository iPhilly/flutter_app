import 'package:flutter/material.dart';
import 'package:flutter_app/src/navigation/GFNavigationBar.dart';

class Search extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var imageUrl = 'https://img.mukewang.com/5c18cf540001ac8206000338-240-135.jpg';
    // Material 是UI呈现的“一张纸”
    var longText = '搜索';

    var listView = new ListView(
      children: <Widget>[
        Image.network(imageUrl),
        ListTile(title: Text(longText),subtitle: Text(longText),selected: true,isThreeLine: false),
        ListTile(title: Text('cell标题'),subtitle: Text(longText),selected: false,enabled: false,contentPadding: EdgeInsets.all(20),),
        ListTile(title: Text('cell标题232'),subtitle: Text('副标题'),selected: false,)
      ],
    );

    return new Scaffold(
      appBar: GFNavigationBar(title: Text('建方长租'),),
      body: listView,
    );
  }

}
