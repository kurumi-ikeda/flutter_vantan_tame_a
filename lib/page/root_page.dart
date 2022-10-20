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
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.black,
        items: [
          const BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: 'sss',
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
            // icon: Icon(
            //   Icons.explore,
            //   color: Colors.white,
            // ),
            label: 'sss',
          ),
          const BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(
              Icons.add_circle,
              color: Colors.white,
            ),
            label: 'sss',
          ),
          const BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(
              Icons.subscriptions,
              color: Colors.white,
            ),
            label: 'sss',
          ),
          const BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(
              Icons.video_library,
              color: Colors.white,
            ),
            label: 'sss',
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
