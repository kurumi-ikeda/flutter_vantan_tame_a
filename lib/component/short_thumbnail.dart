import 'package:flutter/material.dart';

class ShortThumbnail extends StatelessWidget {
  const ShortThumbnail({super.key, required this.thumbnailImage});

  ///サムネイルの画像
  final String thumbnailImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 260,
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
        ],
      ),
    );
  }
}
