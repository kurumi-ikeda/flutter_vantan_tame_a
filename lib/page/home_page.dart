import 'package:flutter/material.dart';

import '../component/common_app_bar.dart';
import '../component/favorite_tag.dart';
import '../component/video_thumbnail.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(),
      body: Column(children: const [
        FavoriteTag(),
        SingleChildScrollView(
            child: VideoThumbnail(
          channelName: 'チャンネル1',
          postTime: '10時間前',
          title: '動画名',
          views: '100万',
          posterImage: 'assets/irastoya/car.jpg',
          thumbnailImage: 'assets/irastoya/焼き芋.jpg',
        )),
      ]),
    );
  }
}
