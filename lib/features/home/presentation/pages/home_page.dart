import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_template/core/config/theme/theme.dart';
import 'package:new_template/features/posts/presentation/pages/post_page.dart';
import 'package:new_template/features/user/presentation/pages/user_page.dart';

import '../../../../injection.dart';
import '../../../posts/presentation/bloc/post_bloc.dart';
import '../../../user/presentation/bloc/user_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  //BLOC
  late final UserBloc _userBloc;
  late final PostBloc _postBloc;

  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    // BLOC
    _userBloc = getIt<UserBloc>()..add(const UserEvent.getListUser());
    _postBloc = getIt<PostBloc>()..add(const PostEvent.getListPost());

    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<UserBloc>(
          create: (context) => _userBloc,
        ),
        BlocProvider(
          create: (context) => _postBloc,
        ),
      ],
      child: Scaffold(
        body: Stack(
          children: [
            Stack(
              children: [
                TabBarView(
                  children: const [
                    PostPage(),
                    UserPage(),
                  ],
                  physics: const NeverScrollableScrollPhysics(),
                  controller: _tabController,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.9),
                        spreadRadius: 50,
                        blurRadius: 20,
                        offset: const Offset(0, 100),
                      ),
                    ],
                  ),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                      color: Colors.white,
                    ),
                    child: TabBar(
                      labelColor: Theme.of(context).primaryColor,
                      unselectedLabelColor: Theme.of(context).colorScheme.onBackground,
                      labelStyle: Theme.of(context).textTheme.headline4!.copyWith(
                            color: Theme.of(context).primaryColor,
                            fontSize: 14,
                          ),
                      indicatorColor: Colors.transparent,
                      indicator: BoxDecoration(
                        color: Theme.of(context).backgroundColor,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      tabs: [
                        Tab(
                          icon: CustomIcons.home,
                          iconMargin: const EdgeInsets.only(bottom: 0.0),
                          text: 'Post',
                        ),
                        Tab(
                          icon: CustomIcons.user,
                          iconMargin: const EdgeInsets.only(bottom: 0.0),
                          text: 'User',
                        ),
                      ],
                      controller: _tabController,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
