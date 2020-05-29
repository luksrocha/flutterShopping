import 'package:flutter/material.dart';
import 'package:shoppingbasics/widgets/category/category-list.widget.dart';
import 'package:shoppingbasics/widgets/products/product-list.widget.dart';
import 'package:shoppingbasics/widgets/search-box.widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SingleChildScrollView(
        child: Container(
          padding:EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:<Widget>[
              SizedBox(height:55),
              SearchBox(),
              SizedBox(height:30),
              Text('Categories',
                style:TextStyle(fontSize:30)
                ),
              SizedBox(height:10),
              Container(
                height: 90,
                child:CategoryList()
              ),
              SizedBox(height:30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Best Selling',
                    style:TextStyle(fontSize:30)
                  ),
                  FlatButton(onPressed: (){}, 
                    child: Text('See All')
                  )
                ],
              ),
              SizedBox(height:10),
              Container(
                height:350,
                child:ProductList()
              )
            ]
          ),
        ),
      )
    );
  }
}