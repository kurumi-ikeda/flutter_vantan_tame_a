import 'package:flutter/material.dart';
import 'package:flutter_vantan_tame_a/component/short_thumbnail.dart';

class ShortListView extends StatelessWidget {
  const ShortListView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    //外側の枠
    return Container(
      height: 300,
      width: screenSize.width,
      color: Colors.grey,
      child: Column(children: [
        Container(
          padding: const EdgeInsets.all(10),
          child: Container(
            height: 30,
            width: screenSize.width,
            color: Colors.black,
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
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.all(8),
            scrollDirection: Axis.horizontal,
            children: const <Widget>[
              ShortThumbnail(),
            ],
          ),
        )
      ]),
    );
  }
}
