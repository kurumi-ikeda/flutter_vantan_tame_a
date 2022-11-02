import 'package:flutter/material.dart';

class ShortThumbnail extends StatelessWidget {
  const ShortThumbnail(
      {super.key,
      required this.thumbnailImage,
      required this.title,
      required this.views});

  ///動画タイトル
  final String title;

  ///再生数
  final String views;

  ///サムネイルの画像
  final String thumbnailImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 260,
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black,
        image: DecorationImage(
          image: AssetImage(
            thumbnailImage,
          ),
        ),
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              padding: const EdgeInsets.only(left: 50, bottom: 50),
              child: IconButton(
                alignment: Alignment.topRight,
                onPressed: () {},
                color: Colors.grey,
                icon: const Icon(Icons.more_vert),
                iconSize: 15,
              ),
            ),
          ),
          Flexible(
            child: SizedBox(
              width: 130,
              height: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      title,
                      style: const TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "$views 回視聴",
                      style: const TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
