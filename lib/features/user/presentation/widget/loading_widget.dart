import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int i) {
          return Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 15,
            ),
            child: ListTile(
              title: Container(
                margin: const EdgeInsets.symmetric(vertical: 8.0),
                height: 16,
                width: 10,
                color: Colors.grey[200],
              ),
              subtitle: Container(
                margin: const EdgeInsets.symmetric(vertical: 8.0),
                height: 13,
                width: 50,
                color: Colors.grey[200],
              ),
              leading: CircleAvatar(
                maxRadius: 30.0,
                backgroundColor: Colors.grey[200],
              ),
            ),
          );
        },
        childCount: 2,
      ),
    );
  }
}
