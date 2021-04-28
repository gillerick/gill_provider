import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'main.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String name = context.read<DataHolder>().name;
    return Scaffold(
      body: Center(
        child: Text(name),
      ),
    );
  }
}