import 'package:flutter/material.dart';

class CommonAppBar extends StatelessWidget {
  const CommonAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //アイコンの幅を指定
        leadingWidth: 120,
        leading: Container(
          //余白の指定
          margin: const EdgeInsets.only(left: 10),
          //画像を表示
          child: Image.asset('assets/youtube_logo.jpg'),
        ),
        backgroundColor: Colors.black,
      ),
      
      body: const Center(
          // ここを追加
          // child: Image.asset('assets/youtube_logo.jpg'),
          ),
    );
  }
}
