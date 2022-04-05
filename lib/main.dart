import 'package:flutter/material.dart';
import "pages/home.dart";

void main() => runApp(const Router());

class Router extends StatelessWidget {
  const Router({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const MaterialApp(
      home: Home(),
    );
  }
}
