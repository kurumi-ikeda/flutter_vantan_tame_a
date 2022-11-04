import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShortPage extends StatefulWidget {
  const ShortPage({Key? key}) : super(key: key);
  @override
  State<ShortPage> createState() => _ShortPageState();
}

class _ShortPageState extends State<ShortPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
      body: Row(
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
            padding: EdgeInsets.only(top: 10, right: 20, bottom: 100, left: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      Icon(
                        Icons.thumb_up,
                        color: Colors.white,
                      ),
                      Text(
                        '8.2万',
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
                        Icons.thumb_down,
                        color: Colors.white,
                      ),
                      Text(
                        '低く評価',
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
    );
  }
}
