import 'package:flutter/material.dart';
import 'package:flutter_fast_app_factory/screens/home_screen.dart';
import 'package:flutter_fast_app_factory/screens/study1_screen.dart';
import 'package:flutter_fast_app_factory/screens/study2_screen.dart';
import 'package:flutter_fast_app_factory/screens/study3_screen.dart';
import 'package:flutter_fast_app_factory/screens/study4_screen.dart';

import 'layout/tab_layout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fast App Factory',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.lightBlue,
        accentColor: Colors.red,
        // Define the default font family.
        fontFamily: 'Noto Sans',
      ),
      debugShowCheckedModeBanner: false,
      home: TabLayout(),
      routes: {        //라우트는 해당 화면으로 가라는 의미
        HomeScreen.id: (context) => HomeScreen(),  //시작하는 HomeScreen 함수는 있어야 함.
        Study1Screen.id: (context) => Study1Screen(),
        Study2Screen.id: (context) => Study2Screen(),
        Study3Screen.id: (context) => Study3Screen(),
        Study4Screen.id: (context) => Study4Screen(),
//        SubScreen.id: (context) => SubScreen(),
//        DbScreen.id: (context) => DbScreen(),
//        NoticePage.id: (context) => NoticePage(),
//        TabLayout.id: (context) => TabLayout(),  //이동하려는 페이지는 모두 여기 main에 있어야 함.
//        ProjectGuide.id: (context) => ProjectGuide(),//새로운 페이지를 만들어 줄 때마다 여기에 불러와줘야 함.
//        LoginPage.id: (context) => LoginPage(),
      },
    );
  }
}
