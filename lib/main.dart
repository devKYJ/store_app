import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key?key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
     debugShowCheckedModeBanner: false, //디버그 배너 없애기.
      home: StorePage(),
      );
  }
}

class StorePage extends StatelessWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // const는 변하지 않는 위젯, 중복된 위젯들 다시 그리지 않아 앱 속도 개선됨.
            Padding(
              padding: EdgeInsets.all(25.0),
              child: Row(
                children: [
                  Text("Woman", style: TextStyle(fontWeight: FontWeight.bold)),
                  Spacer(), //위젯 사이 자동 공간 생성. flex 비율 지정 가능.
                  Text("Kids", style: TextStyle(fontWeight: FontWeight.bold)),
                  Spacer(),
                  Text("Shoes", style: TextStyle(fontWeight: FontWeight.bold)),
                  Spacer(),
                  Text("Bag", style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Expanded(child: Image.asset("assets/bag.jpeg", fit: BoxFit.cover)),//const 오류 어떻게 했는지 모르겠음..
            const SizedBox(height:5),
            Expanded(child: Image.asset("assets/cloth.jpeg", fit: BoxFit.cover)),//const 오류 어떻게 했는지 모르겠음..
          ],
        ),
      ),
    );
  }
}

