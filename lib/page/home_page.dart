import 'package:flutter/material.dart';

import '../component/common_app_bar.dart';
import '../component/favorite_tag.dart';

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



