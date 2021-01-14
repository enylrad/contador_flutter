import 'package:flutter/material.dart';

class CountPage extends StatefulWidget {
  @override
  createState() => _CountPageState();
}

class _CountPageState extends State<CountPage> {
  final _textStyle = TextStyle(fontSize: 25.0);
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Titulo'), centerTitle: true),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Text('Número de clicks:', style: _textStyle),
              Text('$_count', style: _textStyle)
            ])),
        floatingActionButton: _createBottomButtons());
  }

  Widget _createBottomButtons() {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
      SizedBox(width: 30.0),
      FloatingActionButton(child: Text('0'), onPressed: _reset),
      Expanded(child: SizedBox()),
      FloatingActionButton(child: Icon(Icons.add), onPressed: _plus),
      SizedBox(width: 5.0),
      FloatingActionButton(child: Icon(Icons.remove), onPressed: _remove)
    ]);
  }

  void _plus() {
    setState(() => _count++);
  }

  void _remove() {
    setState(() => _count--);
  }

  void _reset() {
    setState(() => _count = 0);
  }
}
