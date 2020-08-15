import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  static final String id = 'home_screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home', style: TextStyle(color: Colors.white),),
        ),
        body: Center(
        child: Image.network(
    'https://cafeskthumb-phinf.pstatic.net/MjAyMDAxMjJfMjY5/MDAxNTc5NzAxNTIyMzYw.b2_PFqdgehNnyWjVjqj0DosXpIvpN4UUdC05yW3ywAMg.hEnk4ust1vWsEmjGWltBcZE_P2r2fCEwL9r84zG0frEg.PNG/stard_gate.PNG?type=w1080',
    ),
    )
    );
  }
}