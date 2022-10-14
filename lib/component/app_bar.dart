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
        //actionsにアイコンを並べていく
        actions: [
          IconButton(
            icon: const Icon(Icons.cast),
            onPressed: () => {},
          ),
          IconButton(
            icon: const Icon(Icons.notifications_outlined),
            onPressed: () => {},
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () => {},
          ),
          IconButton(
            icon: Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.fill, image: AssetImage("assets/icon.jpeg"))),
            ),
            onPressed: () => {},
          )
        ],
      ),
      body: const Center(),
    );
  }
}
