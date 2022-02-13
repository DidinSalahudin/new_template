// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity_plus/connectivity_plus.dart' as _i3;
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i7;

import 'core/module/app_module.dart' as _i19;
import 'core/network/network_info.dart' as _i5;
import 'features/posts/data/datasource/post_local_data_surce.dart' as _i13;
import 'features/posts/data/datasource/post_remote_data_source.dart' as _i6;
import 'features/posts/data/repositories/post_repository_impl.dart' as _i15;
import 'features/posts/domain/repositories/post_repository.dart' as _i14;
import 'features/posts/domain/usecases/get_list_post.dart' as _i17;
import 'features/posts/presentation/bloc/post_bloc.dart' as _i18;
import 'features/user/data/datasources/user_local_data_source.dart' as _i8;
import 'features/user/data/datasources/user_remote_data_source.dart' as _i9;
import 'features/user/data/repositories/user_repository_impl.dart' as _i11;
import 'features/user/domain/repositories/user_repository.dart' as _i10;
import 'features/user/domain/usecases/get_list_user.dart' as _i12;
import 'features/user/presentation/bloc/user_bloc.dart'
    as _i16; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final appModule = _$AppModule();
  gh.singleton<_i3.Connectivity>(appModule.connectivity);
  gh.singleton<_i4.Dio>(appModule.dio);
  gh.factory<_i5.NetworkInfo>(
      () => _i5.NetworkInfoImpl(get<_i3.Connectivity>()));
  gh.factory<_i6.PostRemoteDataSource>(
      () => _i6.PostRemoteDataSourceImpl(get<_i4.Dio>()));
  await gh.factoryAsync<_i7.SharedPreferences>(() => appModule.prefs,
      preResolve: true);
  gh.factory<_i8.UserLocalDataSource>(
      () => _i8.UserLocalDataSourceImpl(get<_i7.SharedPreferences>()));
  gh.factory<_i9.UserRemoteDataSource>(
      () => _i9.UserRemoteDataSourceImpl(get<_i4.Dio>()));
  gh.factory<_i10.UserRepository>(() => _i11.UserRepositoryImpl(
      get<_i5.NetworkInfo>(),
      get<_i9.UserRemoteDataSource>(),
      get<_i8.UserLocalDataSource>()));
  gh.factory<_i12.GetListUser>(
      () => _i12.GetListUser(get<_i10.UserRepository>()));
  gh.factory<_i13.PostLocalDataSource>(
      () => _i13.PostLocalDataSourceImpl(get<_i7.SharedPreferences>()));
  gh.factory<_i14.PostRepository>(() => _i15.PostRepositoryImpl(
      get<_i5.NetworkInfo>(),
      get<_i6.PostRemoteDataSource>(),
      get<_i13.PostLocalDataSource>()));
  gh.factory<_i16.UserBloc>(() => _i16.UserBloc(get<_i12.GetListUser>()));
  gh.factory<_i17.GetListPost>(
      () => _i17.GetListPost(get<_i14.PostRepository>()));
  gh.factory<_i18.PostBloc>(() => _i18.PostBloc(get<_i17.GetListPost>()));
  return get;
}

class _$AppModule extends _i19.AppModule {}
