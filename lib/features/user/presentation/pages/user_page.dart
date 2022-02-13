import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/user_model.dart';
import '../bloc/user_bloc.dart';
import '../widgets/user_widget.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          physics: const AlwaysScrollableScrollPhysics(
            parent: BouncingScrollPhysics(),
          ),
          slivers: [
            const UserAppBarWidget(),
            BlocBuilder<UserBloc, UserState>(
              builder: (context, state) {
                return state.maybeMap(
                  orElse: () => const EmptyContainer(),
                  getListUserOption: (e) => e.users.fold(
                    () => const LoadingWidget(),
                    (a) => a.fold(
                      (l) {
                        return FailureWidget(message: l.message);
                      },
                      (r) => ListUserWidget(
                        userdata: r,
                      ),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

// AppBar
class UserAppBarWidget extends StatelessWidget {
  const UserAppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text("List User"),
          Icon(Icons.add),
        ],
      ),
    );
  }
}

// Empty Container
class EmptyContainer extends StatelessWidget {
  const EmptyContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(delegate: SliverChildListDelegate([Container()]));
  }
}

// List user
class ListUserWidget extends StatelessWidget {
  const ListUserWidget({
    Key? key,
    required this.userdata,
  }) : super(key: key);

  final UserModel userdata;

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
              title: Text(userdata.data![i].title.toString()),
              subtitle: Text('${userdata.data![i].firstName.toString()} ${userdata.data![i].lastName.toString()}'),
              leading: CircleAvatar(
                maxRadius: 30.0,
                backgroundImage: NetworkImage(
                  userdata.data![i].picture.toString(),
                ),
              ),
            ),
          );
        },
        childCount: userdata.data!.length,
      ),
    );
  }
}
