import 'package:flutter/material.dart';

class VideoThumbnail extends StatelessWidget {
  const VideoThumbnail(
      {super.key,
      required this.title,
      required this.views,
      required this.channelName,
      required this.postTime,
      required this.thumbnailImage,
      required this.posterImage});

  ///動画タイトル
  final String title;

  ///再生数
  final String views;

  ///チャンネル名
  final String channelName;

  ///投稿時間
  final String postTime;

  ///サムネイルの画像
  final String thumbnailImage;

  ///投稿者のアイコンの画像
  final String posterImage;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          //サムネイルの部分
          Container(
            height: 200,
            width: screenSize.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  thumbnailImage,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),

          //下のテキスト
          Container(
            height: 75,
            width: screenSize.width,
            color: Colors.black,
            child: Container(
              margin: const EdgeInsets.only(top: 5),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                IconButton(
                  icon: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          posterImage,
                        ),
                      ),
                    ),
                  ),
                  onPressed: () => {},
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "$channelName ･ $views 回視聴 ･ $postTime",
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(left: 50),
                    child: IconButton(
                      alignment: Alignment.topRight,
                      onPressed: () {},
                      color: Colors.grey,
                      icon: const Icon(Icons.more_vert),
                      iconSize: 15,
                    ),
                  ),
                ),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
