import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 60.0,
            centerTitle: false,
            backgroundColor: Colors.black,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Youtube'),
              background: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(
                    Icons.cast_connected,
                    color: Colors.white,
                    size: 40,
                  ),
                  Icon(
                    Icons.room_service,
                    color: Colors.white,
                    size: 40,
                  ),
                  Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 40,
                  ),
                  Icon(
                    Icons.face,
                    color: Colors.white,
                    size: 40,
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return SizedBox(
                  height: 100,
                  child: CustomScrollView(
                    scrollDirection: Axis.horizontal,
                    slivers: [
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int horizontalIndex) {
                            return Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                color: Colors.black,
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Icon(
                                          Icons.face,
                                          color: Colors.white,
                                          size: 80,
                                        ),
                                        Text(
                                          '$horizontalIndex',
                                          style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                );
              },
              childCount: 1,
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 280.0,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.grey,
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    color: Colors.black,
                    child: Row(
                      children: [
                        Icon(
                          Icons.face,
                          color: Colors.white,
                          size: 50,
                        ),
                        Column(
                          children: [
                            Text(
                              'list item $index',
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'list item $index',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
