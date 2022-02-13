import 'package:flutter/material.dart';

import '../../data/models/post_model.dart';

class PostList extends StatelessWidget {
  final PostModel? dataPost;
  const PostList({
    Key? key,
    required this.dataPost,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
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
                ContainerBackgroundImage(
                  dataImage: dataPost!.data![index].image.toString(),
                ),
                ContainerItemData(
                  dataOwnerImage: dataPost!.data![index].owner!.picture.toString(),
                  dataOwnerName: '${dataPost!.data![index].owner!.title.toString()} ${dataPost!.data![index].owner!.firstName.toString()} ${dataPost!.data![index].owner!.lastName.toString()}',
                  dataText: dataPost!.data![index].text.toString(),
                  dataTag: dataPost!.data![index].tags!,
                ),
              ],
            ),
          );
        },
        childCount: dataPost!.total, // 1000 list items
      ),
    );
  }
}

class ContainerBackgroundImage extends StatelessWidget {
  final String dataImage;
  const ContainerBackgroundImage({
    Key? key,
    required this.dataImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        image: DecorationImage(
          image: NetworkImage(dataImage),
          fit: BoxFit.cover,
        ),
      ),
      child: null,
    );
  }
}

class ContainerItemData extends StatelessWidget {
  final String dataOwnerImage;
  final String dataOwnerName;
  final String dataText;
  final List<dynamic> dataTag;

  const ContainerItemData({
    Key? key,
    required this.dataOwnerImage,
    required this.dataOwnerName,
    required this.dataText,
    required this.dataTag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Theme.of(context).colorScheme.onSecondary,
                    backgroundImage: NetworkImage(dataOwnerImage),
                    maxRadius: 17,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    dataOwnerName,
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                dataText,
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
              ),
              const SizedBox(
                height: 2,
              ),
              Row(
                children: [
                  Text(
                    "#asasdasd",
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
