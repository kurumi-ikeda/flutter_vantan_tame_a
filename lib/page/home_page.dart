import 'package:flutter/material.dart';

import '../component/common_app_bar.dart';

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
      height: 60,
      color: Colors.black,
      child: Container(
        padding: const EdgeInsets.only(bottom: 10),
        child: Row(
          children: [
            const SearchButton(),
            const SizedBox(
              height: 20,
              child: VerticalDivider(
                color: Colors.white,
                // width: 30
              ),
            ),
            Expanded(
              child: ListView.builder(
                //横並びにする
                scrollDirection: Axis.horizontal,
                itemCount: tags.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding: const EdgeInsets.all(5),
                    child: ChoiceChip(
                      label: Text(
                        tags[index],
                        style: TextStyle(
                          color: (index == _choiceIndex)
                              ? Colors.black
                              : Colors.white,
                        ),
                      ),
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
            ),
          ],
        ),
      ),
    );
  }
}

class SearchButton extends StatelessWidget {
  const SearchButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        primary: Colors.grey[600],
      ),
      icon: const Icon(Icons.explore),
      label: const Text('探索'),
    );
  }
}
