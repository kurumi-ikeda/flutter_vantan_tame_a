import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_vantan_tame_a/page/channel.dart';

class RegisteredChannelPage extends StatefulWidget {
  const RegisteredChannelPage({super.key});

  @override
  State<RegisteredChannelPage> createState() => _RegisteredChannelPageState();
}

class _RegisteredChannelPageState extends State<RegisteredChannelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: [
              SizedBox(
                height: 105,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 41,
                    itemBuilder: (BuildContext context, int index) {
                      return Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            color: Colors.black,
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    IconButton(
                                      icon: Icon(Icons.face),
                                      color: Colors.white,
                                      iconSize: 60,
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => ChannelPage(),
                                          ),
                                        );
                                      },
                                    ),
                                    Text(
                                      '投稿者 $index',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ));
                    }),
              ),
              Align(
                alignment: Alignment(1, -1),
                child: Container(
                  color: Colors.black,
                  height: 100,
                  width: 100,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 25),
                    ),
                    onPressed: () {},
                    child: Text('すべて'),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    alignment: Alignment.topLeft,
                    height: 40,
                    width: 90,
                    color: Colors.black,
                    child: SizedBox(
                      height: 40,
                      width: 90,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 20),
                          shape: const StadiumBorder(),
                          backgroundColor: Colors.grey,
                          foregroundColor: Colors.white,
                        ),
                        onPressed: () {},
                        child: Text('すべて'),
                      ),
                    ),
                  );
                }),
          ),
          Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  itemCount: 19,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      alignment: Alignment.bottomCenter,
                      height: 300,
                      color: Colors.blue[index * 50],
                      child: Container(
                        height: 70,
                        width: double.infinity,
                        color: Colors.black,
                        child: Row(
                          children: [
                            IconButton(
                              icon: Icon(Icons.face),
                              color: Colors.white,
                              iconSize: 60,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ChannelPage(),
                                  ),
                                );
                              },
                            ),
                            Flexible(
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.centerLeft, //任意のプロパティ
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
                                    alignment: Alignment.centerLeft, //任意のプロパティ
                                    width: double.infinity,
                                    child: Text(
                                      '投稿者 $index , $index分前',
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
                    );
                  }))
        ],
      ),
    );
  }
}
