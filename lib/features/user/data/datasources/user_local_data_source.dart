import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:new_template/core/error/exception.dart';
import 'package:new_template/features/user/data/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class UserLocalDataSource {
  Future<List<UserModel>> getLastUsers();

  Future<void> cacheUsers(List<UserModel> usersToCache);
}

const cachedUsers = 'CACHED_USERS';

@Injectable(as: UserLocalDataSource)
class UserLocalDataSourceImpl implements UserLocalDataSource {
  final SharedPreferences sharedPreferences;

  UserLocalDataSourceImpl(this.sharedPreferences);

  @override
  Future<void> cacheUsers(List<UserModel> usersToCache) async {
    final usersString = <String>[];

    for (var user in usersToCache) {
      usersString.add(json.encode(user.toJson()));
    }

    await sharedPreferences.setStringList(cachedUsers, usersString);
  }

  @override
  Future<List<UserModel>> getLastUsers() async {
    final cachedUsersString = sharedPreferences.getStringList(cachedUsers);

    final lastCachedUsers = <UserModel>[];

    if (cachedUsersString != null) {
      for (var user in cachedUsersString) {
        lastCachedUsers.add(UserModel.fromJson(json.decode(user)));
      }

      return lastCachedUsers;
    } else {
      throw CacheException();
    }
  }
}
