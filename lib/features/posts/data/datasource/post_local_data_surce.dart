import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/error/exception.dart';
import '../models/post_model.dart';

abstract class PostLocalDataSource {
  Future<PostModel> getLastPosts();

  Future<void> cachePosts(PostModel usersToCache);
}

const cachedUsers = 'CACHED_USERS';

@Injectable(as: PostLocalDataSource)
class PostLocalDataSourceImpl implements PostLocalDataSource {
  final SharedPreferences sharedPreferences;

  PostLocalDataSourceImpl(this.sharedPreferences);

  @override
  Future<void> cachePosts(PostModel usersToCache) async {
    await sharedPreferences.setString(cachedUsers, json.encode(usersToCache.toJson()));
  }

  @override
  Future<PostModel> getLastPosts() async {
    final cachedUsersString = sharedPreferences.getString(cachedUsers);

    if (cachedUsersString != null) {
      return PostModel.fromJson(json.decode(cachedUsersString));
    } else {
      throw CacheException();
    }
  }
}
