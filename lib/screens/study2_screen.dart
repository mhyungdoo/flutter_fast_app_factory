import 'package:flutter/material.dart';
import 'package:flutter_fast_app_factory/layout/tab_layout.dart';
import 'package:flutter_fast_app_factory/screens/study3_screen.dart';


class Study2Screen extends StatefulWidget {
  static final String id = 'search_screen';
  @override
  _Study2ScreenState createState() => _Study2ScreenState();
}



class _Study2ScreenState extends State<Study2Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(title: Text('Push & Pop, Hero를 이용한 화면 전환'),),
        body: Center(
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return DetailScreen();
              }));
            },
            child: Hero(
              tag: 'imageHero',
              child: Image.network(
                'https://picsum.photos/250?image=9',
              ),
            ),
          ),
        ),);
  }
}

//하단 메뉴에 만들어진 화면과는 연결하지 않는다. 연결하면 앱 먹통됨.


class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Hero(     //Hero Widget을 이용하여 애니메이션 효과를 주면서 화면 이동함
            tag: 'imageHero',
            child: Image.network(
              'https://cafefiles.pstatic.net/MjAxOTA5MTBfNjkg/MDAxNTY4MTIxMjcxMDY1.pckNCcCwkqloJqIbHyJ0j-FnGRm0uhY987t4JFmWztwg.L0oESka7sdmkJel2NVwFWcYF8PJ2CTXOdQ00tE8Ax-Yg.PNG/wide_b1.PNG',
            ),
          ),
        ),
      ),
    );
  }
}
