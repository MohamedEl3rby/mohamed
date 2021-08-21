import 'package:flutter/material.dart';
import 'package:mohamed/nom.dart';

import '../search.dart';
import '../tabbar.dart';

final Map<String, WidgetBuilder> routes = {
  NomScreen.routeName: (context) => NomScreen(),
  MainTapbarr2.routeName: (context) => MainTapbarr2(),
  SearchScreen.routeName: (context) => SearchScreen()
};
