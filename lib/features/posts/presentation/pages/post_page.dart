import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

class PostPage extends StatefulWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            title: Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      LineIcon(
                        LineIcons.bell,
                        size: 28,
                        color: Colors.black,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      LineIcon(
                        LineIcons.facebookMessenger,
                        size: 28,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Colors.grey,
                        maxRadius: 15,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Salahudin',
                        style: Theme.of(context).textTheme.headline3,
                      )
                    ],
                  )
                ],
              ),
            ),
            floating: true,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.blue[100 * (index % 9 + 1)],
                  ),
                  height: 500,
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          image: const DecorationImage(
                            image: NetworkImage('https://img.dummyapi.io/photo-1564694202779-bc908c327862.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: null,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    const CircleAvatar(
                                      backgroundColor: Colors.grey,
                                      maxRadius: 15,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Item $index",
                                      style: const TextStyle(fontSize: 30),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s'),
                                Row(
                                  children: const [
                                    Text(
                                      "#asasdasd",
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
              childCount: 1000, // 1000 list items
            ),
          ),
        ],
      ),
    );
  }
}
