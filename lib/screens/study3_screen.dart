import 'package:flutter/material.dart';
import 'package:flutter_fast_app_factory/layout/tab_layout.dart';

class Study3Screen extends StatefulWidget {
  static final String id = 'search_screen';
  @override
  _Study3ScreenState createState() => _Study3ScreenState();
}

class _Study3ScreenState extends State<Study3Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),

        body: Center(
          child: Center(
            child: Image.network(
              'https://cafeskthumb-phinf.pstatic.net/MjAyMDAxMjJfMjY5/MDAxNTc5NzAxNTIyMzYw.b2_PFqdgehNnyWjVjqj0DosXpIvpN4UUdC05yW3ywAMg.hEnk4ust1vWsEmjGWltBcZE_P2r2fCEwL9r84zG0frEg.PNG/stard_gate.PNG?type=w1080',
            ),
          ),
        ));
  }
}
