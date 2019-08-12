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

  //Custom Widget that returns CCategory Widget with Inkwell
  Widget inkWellCategoryWidget(_icon, _widgetColor, _name) {
    return Container(
      child: InkWell(
        splashColor: _widgetColor,
        highlightColor: _widgetColor,
        child: Category(_icon, _widgetColor, _name),
      ),
    );
  }

  Widget categoryListViewWidget(List<Widget> categories) {
    return ListView.builder(
      itemCount: _categoryNames.length,
      itemBuilder: (BuildContext context, int index) {
        return categories[index];
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: Create a list of the eight Categories, using the names and colors
    // from above. Use a placeholder icon, such as `Icons.cake` for each
    // Category. We'll add custom icons later.

    final categories = <Category>[];

    for (var i = 0; i < _categoryNames.length; i++) {
      categories.add(
        Category(Icons.group_add, _baseColors[i], _categoryNames[i]),
      );
    }

    // TODO: Create a list view of the Categories
    final listView = Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: categoryListViewWidget(categories),
      ),
      color: _color,
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
