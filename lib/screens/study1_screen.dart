import 'package:flutter/material.dart';


class Study1Screen extends StatefulWidget {
  static final String id = 'search_screen';
  @override
  _Study1ScreenState createState() => _Study1ScreenState();
}

class _Study1ScreenState extends State<Study1Screen> {
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'ListView Study',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body:ListView.separated(
          padding: const EdgeInsets.all(8),
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 50,
              color: Colors.amber[colorCodes[index]],
              child: Center(child: Text('Entry ${entries[index]}')),
            );
          },
          separatorBuilder: (BuildContext context, int index) => const Divider(),
        ),
    );

  }
}
