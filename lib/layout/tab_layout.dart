import 'package:flutter/material.dart';
import 'package:flutter_fast_app_factory/screens/home_screen.dart';
import 'package:flutter_fast_app_factory/screens/study1_screen.dart';
import 'package:flutter_fast_app_factory/screens/study2_screen.dart';
import 'package:flutter_fast_app_factory/screens/study3_screen.dart';
import 'package:flutter_fast_app_factory/screens/study4_screen.dart';


class TabLayout extends StatefulWidget {
  static final String id = 'tab_layout';

  @override
  _TabLayoutState createState() => _TabLayoutState();
}

class _TabLayoutState extends State<TabLayout> {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(      //3회차에서 DefaultTabController로 변경
        length: 5,
        child: Scaffold(
          body: TabBarView(
            children: [
              HomeScreen(), //home_screen.dart 에서 HomeScreen()을 적용하면 에러 발생
              Study1Screen(), //search_screen.dart에서 정의
              Study2Screen(), //write_screen.dart 에서 정의
              Study3Screen(), //map_screen.dart에서 정의
              Study4Screen(), //setting_screen.dart 에서 정의
            ],
          ),
          bottomNavigationBar: Container(
              color: Colors.indigo,   // TabBar Background color
              child: TabBar(tabs: [
                Tab(icon: Icon(Icons.home, color: Colors.white,)),
                Tab(icon: Icon(Icons.list, color: Colors.white,)),
                Tab(icon: Icon(Icons.save, color: Colors.white,)),
                Tab(icon: Icon(Icons.map, color: Colors.white,)),
                Tab(icon: Icon(Icons.settings, color: Colors.white,)),
              ],

              )),
        ));
  }
}

