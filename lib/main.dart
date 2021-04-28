import 'package:flutter/material.dart';
// ignore_for_file: public_member_api_docs, lines_longer_than_80_chars
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
import 'second.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => DataHolder())],
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}

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


class DataHolder with ChangeNotifier, DiagnosticableTreeMixin {
  String _name = "";

  String get name => _name;
  void change({String name}) {
    _name = name;
    notifyListeners();
  }
}
