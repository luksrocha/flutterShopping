import 'package:flutter/material.dart';
import 'package:shoppingbasics/pages/tabs.page.dart';
import 'package:shoppingbasics/themes/dark.theme.dart';
import 'package:shoppingbasics/themes/light.theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: darkTheme(),
      home: DefaultTabController(
        length: 3, 
        child: TabsPage()
      )
    );
  }
}