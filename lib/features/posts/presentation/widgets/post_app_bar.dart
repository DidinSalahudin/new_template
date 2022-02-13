import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

class PostAppBar extends StatelessWidget {
  const PostAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      elevation: 0,
      backgroundColor: Theme.of(context).backgroundColor,
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
                  color: Theme.of(context).colorScheme.onBackground,
                ),
                const SizedBox(
                  width: 10,
                ),
                LineIcon(
                  LineIcons.facebookMessenger,
                  size: 28,
                  color: Theme.of(context).colorScheme.onBackground,
                ),
              ],
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  maxRadius: 15,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Salahudin',
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                )
              ],
            )
          ],
        ),
      ),
      floating: true,
    );
  }
}
