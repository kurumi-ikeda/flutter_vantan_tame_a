import 'package:flutter/material.dart';
import 'package:flutter_vantan_tame_a/page/registered_channel_page.dart';
import 'package:flutter_vantan_tame_a/page/short_page.dart';

import 'home_page.dart';
import 'library_page.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _navIndex = 0;

  final _navWidget = [
    const HomePage(),
    const ShortPage(),
    //_navWidgetのindexをずらすための空の [Container] 真ん中には [showUploadBottomSheet] が描画されるようにしてるため
    Container(),
    const RegisteredChannelPage(),
    const LibraryPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        //選択されている時のフォントサイズを変更
        selectedFontSize: 10,
        //選択されていない時のフォントサイズを変更
        unselectedFontSize: 10,
        // 選択されている時のカラーを変更
        selectedItemColor: Colors.white,
        //選択されていない時のカラーを変更
        unselectedItemColor: Colors.white,
        //背景のカラーを変更
        backgroundColor: Colors.black,
        currentIndex: _navIndex,
        type: BottomNavigationBarType.fixed,

        items: [
          const BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: 'ホーム',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: SizedBox(
              width: 24,
              height: 22,
              child: Image.asset(
                'assets/youtube-shorts-logo.png',
                fit: BoxFit.fitHeight,
                color: Colors.white,
                // colorBlendMode: BlendMode.lighten,
              ),
            ),
            label: 'ショート',
          ),
          const BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(
              Icons.add_circle,
              color: Colors.white,
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(
              Icons.subscriptions,
              color: Colors.white,
            ),
            label: '登録チャンネル',
          ),
          const BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(
              Icons.video_library,
              color: Colors.white,
            ),
            label: 'ライブラリ',
          ),
        ],
        onTap: (int index) {
          if (index == 2) {
            showUploadBottomSheet(context);
          } else {
            setState(() {
              _navIndex = index;
            });
          }
        },
      ),
      body: _navWidget.elementAt(_navIndex),
    );
  }
}

void showUploadBottomSheet(BuildContext context) async {
  await showModalBottomSheet<void>(
    isScrollControlled: true,
    backgroundColor: Colors.black,
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
    builder: (BuildContext context) {
      return SizedBox(
        height: 500,
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "作成",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close),
                    color: Colors.white,
                    onPressed: () => {
                      Navigator.of(context).pop(),
                    },
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(221, 67, 66, 66),
                    shape: BoxShape.circle,
                  ),
                  height: 40,
                  width: 40,
                  child: const Icon(
                    Icons.upload,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  '動画をアップロード',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black, //ボタンの背景色
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(221, 67, 66, 66),
                      shape: BoxShape.circle,
                    ),
                    height: 40,
                    width: 40,
                    child: const Icon(
                      Icons.upload,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    '動画をアップロード',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    },
  );
}
