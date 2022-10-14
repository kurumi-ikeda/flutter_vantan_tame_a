import 'package:flutter/material.dart';
import 'package:flutter_vantan_tame_a/component/app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(),
      body: Column(children: const [
        FavoriteTag(),
      ]),
    );
  }
}

class FavoriteTag extends StatefulWidget {
  const FavoriteTag({Key? key}) : super(key: key);

  @override
  State<FavoriteTag> createState() => _FavoriteTagState();
}

class _FavoriteTagState extends State<FavoriteTag> {
  final tags = [
    'すべて',
    'ゲーム',
    'ミックス',
    '音楽',
    'ライブ',
    'シュミレーション',
    'アクション&アドベンチャーゲーム',
    '料理',
    'スポーツ',
    '最近アップロードされた動画',
    '視聴済み',
    '投稿',
  ];
  int _choiceIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      color: Colors.black,
      child: ListView.builder(
        //横並びにする
        scrollDirection: Axis.horizontal,
        itemCount: tags.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: const EdgeInsets.all(5),
            child: ChoiceChip(
              label: Text(tags[index]),
              selected: _choiceIndex == index,
              backgroundColor: Colors.grey[600],
              selectedColor: Colors.white,
              onSelected: (_) {
                setState(() {
                  _choiceIndex = index;
                });
              },
            ),
          );
        },
      ),
    );
  }
}
