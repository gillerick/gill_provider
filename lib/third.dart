import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'main.dart';
import 'second.dart';

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String name = context.read<DataHolder>().name;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Page2()));
        },
      ),
      body: Center(
        child: Text(name),
      ),
    );
  }
}