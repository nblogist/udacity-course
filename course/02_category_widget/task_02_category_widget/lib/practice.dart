import 'package:flutter/material.dart';

class Category extends StatelessWidget{
  final IconData icon;
  final Color color;
  final String catName;
  const Category(this.icon, this.color, this.catName);
  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(
              icon,
              color: color,
              size: 60,
            ),
          ),
          Text(
            catName,
            style: TextStyle(fontSize: 24),
          ),
          Container(
            height: 100,
            width: 50,
          ),
        ],
      ),
    );
  }
}