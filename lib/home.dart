import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'main.dart';
import 'second.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.read<DataHolder>().name),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Page2()));
        },
      ),
      body: Center(
        child: TextFormField(
          onChanged: (val) => context.read<DataHolder>().change(name: val),
        ),
      ),
    );
  }
}