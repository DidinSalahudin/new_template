import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:new_template/features/user/presentation/bloc/user_bloc.dart';
import 'package:new_template/injection.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final UserBloc _userBloc;

  @override
  void initState() {
    super.initState();
    _userBloc = getIt<UserBloc>();
    _userBloc.add(const UserEvent.getListUser());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserBloc>(
      create: (_) => _userBloc,
      child: Scaffold(
        body: SafeArea(
          child: CustomScrollView(
            physics: const AlwaysScrollableScrollPhysics(
              parent: BouncingScrollPhysics(),
            ),
            slivers: [
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return Slidable(
                      key: const ValueKey(0),
                      endActionPane: const ActionPane(
                        motion: ScrollMotion(),
                        children: [
                          SlidableAction(
                            onPressed: null,
                            backgroundColor: Color(0xFF7BC043),
                            foregroundColor: Colors.white,
                            icon: Icons.edit,
                            label: 'Edit',
                          ),
                          SlidableAction(
                            onPressed: null,
                            backgroundColor: Color(0xFF0392CF),
                            foregroundColor: Colors.white,
                            icon: Icons.delete,
                            label: 'Hapus',
                          ),
                        ],
                      ),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                        child: const ListTile(
                          title: Text('Ms Sarah'),
                          leading: CircleAvatar(
                            maxRadius: 30.0,
                          ),
                        ),
                      ),
                    );
                  },
                  childCount: 1000,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
