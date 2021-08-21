import "package:flutter/material.dart";
import 'package:mohamed/Helper/Routes.dart';
import 'package:mohamed/nom.dart';
import 'package:mohamed/tabbar.dart';
import 'MainScreen.dart';
import 'home.dart';
import 'fav.dart';
import 'package:mohamed/search.dart';
import 'hav.dart';

void main() {
  runApp(new MaterialApp(
    title: "layout-Column",
    initialRoute: MainTapbarr2.routeName,
    routes: routes,
  ));
}
