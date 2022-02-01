import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:new_template/core/error/exception.dart';
import 'package:new_template/features/user/data/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class UserLocalDataSource {
  Future<UserModel> getLastUsers();

  Future<void> cacheUsers(UserModel usersToCache);
}

const cachedUsers = 'CACHED_USERS';

@Injectable(as: UserLocalDataSource)
class UserLocalDataSourceImpl implements UserLocalDataSource {
  final SharedPreferences sharedPreferences;

  UserLocalDataSourceImpl(this.sharedPreferences);

  @override
  Future<void> cacheUsers(UserModel usersToCache) async {
    await sharedPreferences.setString(cachedUsers, json.encode(usersToCache.toJson()));
  }

  @override
  Future<UserModel> getLastUsers() async {
    final cachedUsersString = sharedPreferences.getString(cachedUsers);

    if (cachedUsersString != null) {
      return UserModel.fromJson(json.decode(cachedUsersString));
    } else {
      throw CacheException();
    }
  }
}
