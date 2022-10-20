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
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
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
                    color: Colors.red,
                    height: 100,
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Text("[総額◯◯◯万円] これまで買った仕事用パソコンの金額を合わせたらやばすぎる,,,"),
                      Text("#shorts"),
                      Row(
                        children: [
                          Icon(Icons.account_circle),
                          Text("#shorts"),
                        ],
                      )
                    ],
                  ),
                  color: Colors.blue,
                  height: 100,
                  width: double.infinity,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.camera_alt_outlined),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
