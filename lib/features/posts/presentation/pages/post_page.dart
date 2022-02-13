import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:new_template/features/posts/data/models/post_model.dart';
import 'package:new_template/features/posts/presentation/bloc/post_bloc.dart';

import '../../../../injection.dart';
import '../widgets/post_app_bar.dart';
import '../widgets/post_list.dart';

class PostPage extends StatefulWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<PostBloc, PostState>(
        builder: (context, state) {
          return state.maybeMap(
            orElse: () => Container(),
            getListPostOption: (e) => e.posts.fold(
              () => Container(),
              (a) => a.fold(
                (l) => const LoadingListPost(),
                (r) => LoadedListPost(
                  data: r,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class LoadingListPost extends StatelessWidget {
  const LoadingListPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}

class LoadedListPost extends StatelessWidget {
  final PostModel? data;
  const LoadedListPost({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const PostAppBar(),
        PostList(
          dataPost: data,
        ),
      ],
    );
  }
}
