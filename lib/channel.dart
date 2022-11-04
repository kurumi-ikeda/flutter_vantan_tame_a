import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dart:math' as math;

class ChannelPage extends StatefulWidget {
  const ChannelPage({super.key});

  @override
  State<ChannelPage> createState() => _ChannelPageState();
}

int randomIntWithRange(int min, int max) {
  int value = math.Random().nextInt(max - min);
  return value + min;
}

int watchcount = randomIntWithRange(20, 60);

List watch1 = [
  randomIntWithRange(300, 5000),
  randomIntWithRange(300, 5000),
  randomIntWithRange(300, 5000),
  randomIntWithRange(300, 5000),
  randomIntWithRange(300, 5000),
  randomIntWithRange(300, 5000),
  randomIntWithRange(300, 5000),
  randomIntWithRange(300, 5000),
  randomIntWithRange(300, 5000),
  randomIntWithRange(300, 5000),
  randomIntWithRange(300, 5000),
  randomIntWithRange(300, 5000),
  randomIntWithRange(300, 5000),
  randomIntWithRange(300, 5000),
  randomIntWithRange(300, 5000),
  randomIntWithRange(300, 5000),
  randomIntWithRange(300, 5000),
  randomIntWithRange(300, 5000),
  randomIntWithRange(300, 5000),
];

class _ChannelPageState extends State<ChannelPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0, // 最初に表示するタブ
      length: 6, // タブの数
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('投稿者n'),
          bottom: const TabBar(
            isScrollable: true,
            tabs: <Widget>[
              Tab(text: 'ホーム'),
              Tab(text: '動画'),
              Tab(text: '再生リスト'),
              Tab(text: 'コミュニティ'),
              Tab(text: 'チャンネル'),
              Tab(text: '概要'),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemCount: 1,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          color: Colors.black,
                          width: double.infinity,
                          child: Column(
                            children: [
                              Container(
                                color: Colors.yellow,
                                height: 100,
                              ),
                              Container(
                                  child: Icon(
                                Icons.face,
                                color: Colors.white,
                                size: 80,
                              )),
                              Container(
                                child: Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(2),
                                      child: Text(
                                        ''' 投稿者n''',
                                        style: TextStyle(
                                          fontSize: 30,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(2),
                                      width: 125,
                                      child: Row(
                                        children: [
                                          Text(
                                            ''' 登録済み''',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.grey,
                                            ),
                                          ),
                                          Icon(
                                            Icons.notifications_on,
                                            color: Colors.grey,
                                            size: 35,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(2),
                                      child: Text(
                                        ' チャンネル登録者' +
                                            (randomIntWithRange(900, 9999))
                                                .toString() +
                                            '人・19本の動画',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 200,
                                      padding: EdgeInsets.all(2),
                                      child: Row(
                                        children: [
                                          Text(
                                            '動画投稿者nです。',
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.grey,
                                            ),
                                          ),
                                          Icon(
                                            Icons.arrow_forward_ios,
                                            color: Colors.grey,
                                            size: 20,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.bottomCenter,
                                      height: 300,
                                      color: Colors.indigo,
                                      child: Container(
                                        height: 70,
                                        width: double.infinity,
                                        color: Colors.black,
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.face,
                                              color: Colors.white,
                                              size: 60,
                                            ),
                                            Flexible(
                                              child: Column(
                                                children: [
                                                  Container(
                                                    alignment: Alignment
                                                        .centerLeft, //任意のプロパティ
                                                    width: double.infinity,
                                                    child: Text(
                                                      ''' トップ動画''',
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    alignment: Alignment
                                                        .centerLeft, //任意のプロパティ
                                                    width: double.infinity,
                                                    child: Text(
                                                      '投稿者n・' +
                                                          (watchcount)
                                                              .toString() +
                                                          '万回再生・3ヶ月前',
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                        fontSize: 15,
                                                        color: Colors.grey,
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          Container(
                                            color: Colors.black,
                                            width: 15,
                                          ),
                                          Text(
                                            'アップロード動画',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white,
                                            ),
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
                      },
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          color: Colors.black,
                          width: double.infinity,
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.bottomCenter,
                                height: 120,
                                color: Colors.black,
                                child: Row(
                                  children: [
                                    Container(
                                      width: 15,
                                      color: Colors.black,
                                    ),
                                    Stack(
                                      children: [
                                        Container(
                                          width: 170,
                                          height: 100,
                                          color: Colors.white.withOpacity(0.3),
                                        ),
                                        Container(
                                          width: 170,
                                          height: 100,
                                          color: Colors.green[index * 50],
                                          child: Icon(
                                            Icons.face_outlined,
                                            color: Colors.white,
                                            size: 60,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Flexible(
                                      child: Column(
                                        children: [
                                          Container(
                                            alignment: Alignment.centerLeft,
                                            width: double.infinity,
                                            child: Text(
                                              ''' 動画$index''',
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.centerLeft,
                                            width: double.infinity,
                                            child: Text(
                                              (watch1[index]).toString() +
                                                  ' 回視聴 ・ $index日前',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.grey,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    ListView.builder(
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        itemCount: 19,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            alignment: Alignment.bottomCenter,
                            height: 120,
                            color: Colors.black,
                            child: Row(
                              children: [
                                Container(
                                  width: 15,
                                  color: Colors.black,
                                ),
                                Stack(
                                  children: [
                                    Container(
                                      width: 170,
                                      height: 100,
                                      color: Colors.white.withOpacity(0.3),
                                    ),
                                    Container(
                                      width: 170,
                                      height: 100,
                                      color: Colors.green[index * 50],
                                      child: Icon(
                                        Icons.face_outlined,
                                        color: Colors.white,
                                        size: 60,
                                      ),
                                    ),
                                  ],
                                ),
                                Flexible(
                                  child: Column(
                                    children: [
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        width: double.infinity,
                                        child: Text(
                                          ''' 動画$index''',
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        width: double.infinity,
                                        child: Text(
                                          (watch1[index]).toString() +
                                              ' 回視聴 ・ $index日前',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                    Container(
                      alignment: Alignment.bottomCenter,
                      height: 120,
                      color: Colors.black,
                      child: Row(
                        children: [
                          Container(
                            width: 15,
                            color: Colors.black,
                          ),
                          Container(
                            width: 170,
                            height: 100,
                            color: Colors.indigo,
                          ),
                          Flexible(
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  width: double.infinity,
                                  child: Text(
                                    ''' トップ動画''',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  width: double.infinity,
                                  child: Text(
                                    (watchcount).toString() + ' 万回視聴 ・ 3ヶ月前',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    ListView.builder(
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        itemCount: 11,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            alignment: Alignment.bottomCenter,
                            height: 120,
                            color: Colors.black,
                            child: Row(
                              children: [
                                Container(
                                  width: 15,
                                  color: Colors.black,
                                ),
                                Container(
                                  width: 170,
                                  height: 100,
                                  color: Colors.purple[index * 50],
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    width: 60,
                                    color: Colors.black.withOpacity(0.9),
                                    child: Column(
                                      children: [
                                        Text(''),
                                        Text(
                                          (index + 2).toString(),
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Icon(
                                          Icons.toc,
                                          color: Colors.white,
                                          size: 40,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Column(
                                    children: [
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        width: double.infinity,
                                        child: Text(
                                          '''再生リスト''' + (index + 2).toString(),
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        width: double.infinity,
                                        child: Text(
                                          '投稿者n',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        width: double.infinity,
                                        child: Text(
                                          (index + 2).toString() + '本の動画',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        })
                  ],
                ),
              ),
            ),
            Center(
              child: Text('コミュニティ', style: TextStyle(fontSize: 32.0)),
            ),
            Center(
              child: Text('チャンネル', style: TextStyle(fontSize: 32.0)),
            ),
            Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.black,
              child: Column(
                children: [
                  Row(children: [
                    Text(
                      '説明',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ]),
                  Row(
                    children: [
                      Text(
                        '動画投稿者nです。',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Text(' '),
                  Row(
                    children: [
                      Text(
                        'リンク',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Row(children: [
                    Icon(
                      Icons.label_important,
                      color: Colors.blue,
                      size: 30,
                    ),
                    Text(
                      'twitter',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                      ),
                    ),
                  ]),
                  Text(' '),
                  Row(
                    children: [
                      Text(
                        'その他の情報',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.radio_button_checked,
                        color: Colors.white,
                        size: 30,
                      ),
                      Text(
                        '本来リンクがある所',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
