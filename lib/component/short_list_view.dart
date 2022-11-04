import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_vantan_tame_a/component/short_thumbnail.dart';

class ShortListView extends StatelessWidget {
  const ShortListView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    const blackColor = Color.fromARGB(255, 15, 15, 15);
    //外側の枠
    return Container(
      height: 300,
      width: screenSize.width,
      color: blackColor,
      child: Column(children: [
        Container(
          margin: const EdgeInsets.all(10),
          child: Container(
            height: 30,
            width: screenSize.width,
            color: blackColor,
            child: Row(
              children: [
                Image.asset('assets/youtube-shorts-logo.png'),
                //空白をいれるためのSizedBox
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "ショート",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 15,
            padding: const EdgeInsets.all(8),
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext _, int index) {
              final List<String> imageLink = [
                "assets/irastoya/car.jpg",
                "assets/irastoya/カップケーキのイラスト.jpg",
                "assets/irastoya/やかんがストーブの上に置かれたイラスト.jpg",
                "assets/irastoya/焼き芋.jpg",
              ];

              return ShortThumbnail(
                title: 'ショート動画$index',
                thumbnailImage: imageLink[Random().nextInt(imageLink.length)],
                views: '500万',
              );
            },
          ),
        )
      ]),
    );
  }
}
