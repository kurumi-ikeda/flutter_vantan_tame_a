import 'package:flutter/material.dart';

class VideoThumbnail extends StatelessWidget {
  const VideoThumbnail({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          // padding: const EdgeInsets.all(10),
          height: 200,
          width: screenSize.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://i.ytimg.com/vi/miaLdDs4VZ4/hqdefault.jpg?sqp=-oaymwEcCNACELwBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLAYoeNivBf83iGdjRFH8H0ep-6PbQ'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: 75,
          width: screenSize.width,
          color: Colors.black,
          child: Row(children: [
            Container(
              padding: const EdgeInsets.only(
                bottom: 30,
              ),
              child: IconButton(
                icon: Container(
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/icon.jpeg"))),
                ),
                onPressed: () => {},
              ),
            ),

            // Text(data)
          ]),
        )
      ],
    );
  }
}
