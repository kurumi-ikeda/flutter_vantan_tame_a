import 'package:flutter/material.dart';

class ShortThumbnail extends StatelessWidget {
  const ShortThumbnail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 260,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black,
        image: const DecorationImage(
          image: AssetImage(
            "assets/irastoya/カップケーキのイラスト.jpg",
          ),
        ),
      ),
      
    );
  }
}
