import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'package:new_template/core/config/app_theme.dart';
import 'package:new_template/core/config/theme/theme.dart';
import 'package:new_template/features/posts/presentation/pages/post_page.dart';
import 'package:new_template/features/user/presentation/pages/user_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  String title = 'BottomNavigationBar';

  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Stack(
            children: [
              TabBarView(
                children: const [
                  PostPage(),
                  UserPage(),
                ],
                // If you want to disable swiping in tab the use below code
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30.0),
                    ),
                    color: Colors.white,
                  ),
                  child: TabBar(
                    labelColor: CustomColors.primaryColor,
                    unselectedLabelColor: CustomColors.darkColor,
                    labelStyle: Theme.of(context).textTheme.headline4!.copyWith(
                          color: CustomColors.primaryColor,
                          fontSize: 14,
                        ),
                    indicatorColor: Colors.transparent,
                    indicator: BoxDecoration(
                      color: CustomColors.backgroundColor,
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
                        icon: CustomIcons.home,
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
    );
  }
}
