import 'package:flutter/material.dart';
import 'package:flutter_vantan_tame_a/component/common_app_bar.dart';

class RegisteredChannelPage extends StatelessWidget {
  const RegisteredChannelPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(),
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
                                    const Icon(
                                      Icons.face,
                                      color: Colors.white,
                                      size: 80,
                                    ),
                                    Text(
                                      '投稿者 $index',
                                      style: const TextStyle(
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
                alignment: const Alignment(1, -1),
                child: Container(
                  color: Colors.black,
                  height: 100,
                  width: 100,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 25),
                    ),
                    onPressed: () {},
                    child: const Text('すべて'),
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
                        child: const Text('すべて'),
                      ),
                    ),
                  );
                }),
          ),
          Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemCount: 41,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      alignment: Alignment.bottomCenter,
                      height: 300,
                      color: Colors.grey,
                      child: Container(
                        height: 70,
                        width: double.infinity,
                        color: Colors.black,
                        child: Row(
                          children: [
                            const Icon(
                              Icons.face,
                              color: Colors.white,
                              size: 60,
                            ),
                            Flexible(
                              child: Column(
                                children: [
                                  Text(
                                    ''' list item tem tem tem$index list item tem tem tem$index!''',
                                    style: const TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft, //任意のプロパティ
                                    width: double.infinity,
                                    child: Text(
                                      '投稿者 $index , $index分前',
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
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
          // Container(
          //   alignment: Alignment.bottomCenter,
          //   height: 280,
          //   color: Colors.grey,
          //   child: Container(
          //     height: 70,
          //     width: double.infinity,
          //     color: Colors.black,
          //     child: Row(
          //       children: [
          //         Icon(
          //           Icons.face,
          //           color: Colors.white,
          //           size: 60,
          //         ),
          //         Flexible(
          //           child: Column(
          //             children: [
          //               Text(
          //                 ''' list item tem tem tem1 list item tem tem tem1!''',
          //                 style: TextStyle(
          //                   fontSize: 20,
          //                   color: Colors.white,
          //                 ),
          //               ),
          //               Text(
          //                 'list item 1',
          //                 style: TextStyle(
          //                   fontSize: 15,
          //                   color: Colors.grey,
          //                 ),
          //               ),
          //             ],
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
