import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ShortPage extends StatefulWidget {
  const ShortPage({Key? key}) : super(key: key);
  @override
  State<ShortPage> createState() => _ShortPageState();
}

class _ShortPageState extends State<ShortPage> {
  bool iseSelectedGoodButton = false;
  bool isSelectedDownButton = false;
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/IMG_3645.MOV');
    _controller.initialize();
    _controller.play();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        // 右側のアイコン一覧
        // タイトルテキスト
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text('ショート'),
        // 右側のアイコン一覧
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.camera_alt_outlined),
          ),
        ],
      ),
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.black,
              child: VideoPlayer(_controller),
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          alignment: Alignment.topLeft,
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.play_circle),
                                color: Colors.white,
                              ),
                              SizedBox(width: 5),
                              TextButton(
                                onPressed: () {/* ボタンがタップされた時の処理 */},
                                style: TextButton.styleFrom(
                                  primary: Colors.white,
                                ),
                                child: Text("登録チャンネル"),
                              ),
                            ],
                          ),
                          color: Colors.transparent,
                          height: 100,
                        ),
                      ),
                      Container(
                        alignment: Alignment.bottomLeft,
                        child: Column(
                          children: [
                            Text(
                              "[総額◯◯◯万円] これまで買った仕事用パソコンの金額を合わせたらやばすぎる,,,",
                              style: TextStyle(color: Colors.white),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "#shorts",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.account_circle),
                                  color: Colors.white,
                                ),
                                SizedBox(width: 8),
                                TextButton(
                                  onPressed: () {/* ボタンがタップされた時の処理 */},
                                  style: TextButton.styleFrom(
                                    primary: Colors.white,
                                  ),
                                  child: Text("かっつー"),
                                ),
                                SizedBox(width: 8),
                                OutlinedButton(
                                  onPressed: () {/* ボタンがタップされた時の処理 */},
                                  style: OutlinedButton.styleFrom(
                                      backgroundColor: Colors.red,
                                      foregroundColor: Colors.white),
                                  child: Text('チャンネル登録'),
                                )
                              ],
                            )
                          ],
                        ),
                        color: Colors.transparent,
                        height: 150,
                        width: double.infinity,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      top: 10, right: 20, bottom: 100, left: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        onPressed: () {
                          print("おした");
                          setState(() {
                            if (iseSelectedGoodButton == false) {
                              iseSelectedGoodButton = true;
                              isSelectedDownButton = false;
                            } else {
                              iseSelectedGoodButton = false;
                            }

                            //iseSelectedGoodButton = !iseSelectedGoodButton;
                            print(iseSelectedGoodButton);
                          });
                        },
                        child: Column(
                          children: [
                            Icon(
                              Icons.thumb_up,
                              color: iseSelectedGoodButton
                                  ? Colors.blue
                                  : Colors.white,
                            ),
                            Text(
                              '8.2万',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            if (isSelectedDownButton == false) {
                              isSelectedDownButton = true;
                              iseSelectedGoodButton = false;
                            } else {
                              isSelectedDownButton = false;
                            }

                            // isSelectedDownButton = !isSelectedDownButton;
                          });
                        },
                        child: Column(
                          children: [
                            Icon(
                              Icons.thumb_down,
                              color: isSelectedDownButton
                                  ? Colors.blue
                                  : Colors.white,
                            ),
                            Text(
                              '低く評価',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          showUploadBottomSheet(context);
                        },
                        child: Column(
                          children: [
                            Icon(
                              Icons.comment_bank,
                              color: Colors.white,
                            ),
                            Text(
                              '787',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Column(
                          children: [
                            Icon(
                              Icons.ios_share,
                              color: Colors.white,
                            ),
                            Text(
                              '共有',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Column(
                          children: [
                            Icon(
                              Icons.settings,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
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
                  Row(
                    children: [
                      const Text(
                        "コメント",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '787',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                    ],
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
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 10, right: 20, bottom: 100, left: 30),
                    child: Icon(
                      Icons.account_circle,
                      color: Colors.white,
                    ),
                  ),
                ),
                Column(
                  children: [
                    const Text(
                      '動画をアップロード',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ],
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
