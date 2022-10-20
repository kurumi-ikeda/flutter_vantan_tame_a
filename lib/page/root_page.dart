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
    const RegisteredChannelPage(),
    const LibraryPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(
              Icons.insert_photo,
              color: Colors.white,
            ),
            label: 'sss',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.photo_library,
            ),
            label: 'sss',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.abc_rounded),
            label: "aaa",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.abc_rounded),
            label: "aaa",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.abc_rounded,
            ),
            label: "aaa",
          ),
        ],
        onTap: (int index) {
          setState(
            () {
              _navIndex = index;
            },
          );
        },
        currentIndex: _navIndex,
        type: BottomNavigationBarType.fixed,
      ),
      body: _navWidget.elementAt(_navIndex),
    );
  }
}
