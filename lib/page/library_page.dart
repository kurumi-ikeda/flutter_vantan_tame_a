import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../component/common_app_bar.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 140,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: 140,
                    child: Column(
                      children: [
                        Image.network(
                          'https://i.ytimg.com/an_webp/VNYduJu9dj8/mqdefault_6s.webp?du=3000&sqp=CO3v55oG&rs=AOn4CLCarMgxIn7STezsRQqUfH1-lVVvHg',
                          width: 120,
                          height: 80,
                        ),
                        Expanded(
                          child: Text(
                            '【本人更生済み】ステハゲを停学・留年にしてくださったあの動画 再アップ【削除覚悟】※コンプライアンス考慮により一部音声修正済み',
                            maxLines: 2,
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.video_call),
                  const SizedBox(width: 8),
                  Text('自分の動画'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.arrow_downward),
                  const SizedBox(width: 8),
                  Text('オフライン'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.drive_file_move_rtl),
                  const SizedBox(width: 8),
                  Text('購入した映画と番組'),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    '再生リスト',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Text('新しい順'),
                      Icon(Icons.keyboard_arrow_down),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.add,
                    color: Colors.blue,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    '新しい再生リスト',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.access_time),
                  const SizedBox(width: 8),
                  Text('後で見る'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.thumb_up_alt_outlined),
                  const SizedBox(width: 8),
                  Text('高く評価した動画'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
