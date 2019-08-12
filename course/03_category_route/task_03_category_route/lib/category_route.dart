// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:task_03_category_route/category.dart';

// TODO: Check if we need to import anything

// TODO: Define any constants

/// Category Route (screen).
///
/// This is the 'home' screen of the Unit Converter. It shows a header and
/// a list of [Categories].
///
/// While it is named CategoryRoute, a more apt name would be CategoryScreen,
/// because it is responsible for the UI at the route's destination.
final Color _color = Colors.green[100];

class CategoryRoute extends StatelessWidget {
  const CategoryRoute();

  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: Create a list of the eight Categories, using the names and colors
    // from above. Use a placeholder icon, such as `Icons.cake` for each
    // Category. We'll add custom icons later.

    // TODO: Create a list view of the Categories
    final listView = Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ListView(
          children: <Widget>[
            InkWellCategoryWidget(
                Icons.grid_on, _baseColors[0], _categoryNames[0]),
            InkWellCategoryWidget(
                Icons.grid_on, _baseColors[1], _categoryNames[1]),
            InkWellCategoryWidget(
                Icons.grid_on, _baseColors[2], _categoryNames[2]),
            InkWellCategoryWidget(
                Icons.grid_on, _baseColors[3], _categoryNames[3]),
            InkWellCategoryWidget(
                Icons.grid_on, _baseColors[4], _categoryNames[4]),
            InkWellCategoryWidget(
                Icons.grid_on, _baseColors[5], _categoryNames[5]),
            InkWellCategoryWidget(
                Icons.grid_on, _baseColors[6], _categoryNames[6]),
            InkWellCategoryWidget(
                Icons.grid_on, _baseColors[7], _categoryNames[7]),
          ],
        ),
      ),
    );

    // TODO: Create an App Bar
    final appBar = AppBar(
      leading:
          Icon(Icons.close, color: Theme.of(context).textTheme.headline.color),
      backgroundColor: _color,
      title: Text(
        'Unit Converter',
        style: Theme.of(context).textTheme.headline,
      ),
      elevation: 0,
    );

    return Scaffold(
      appBar: appBar,
      body: listView,
      backgroundColor: _color,
    );
  }
}

class InkWellCategoryWidget extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String catName;

  @override
  InkWellCategoryWidget(this.icon, this.color, this.catName);
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        splashColor: this.color,
        highlightColor: this.color,
        child: Category(this.icon, this.color, this.catName),
      ),
    );
  }
}
