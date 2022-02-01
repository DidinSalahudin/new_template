// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity_plus/connectivity_plus.dart' as _i3;
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i6;

import 'core/module/app_module.dart' as _i13;
import 'core/network/network_info.dart' as _i5;
import 'features/user/data/datasources/user_local_data_source.dart' as _i7;
import 'features/user/data/datasources/user_remote_data_source.dart' as _i8;
import 'features/user/data/repositories/user_repository_impl.dart' as _i10;
import 'features/user/domain/repositories/user_repository.dart' as _i9;
import 'features/user/domain/usecases/get_list_user.dart' as _i11;
import 'features/user/presentation/bloc/user_bloc.dart'
    as _i12; // ignore_for_file: unnecessary_lambdas

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
  await gh.factoryAsync<_i6.SharedPreferences>(() => appModule.prefs,
      preResolve: true);
  gh.factory<_i7.UserLocalDataSource>(
      () => _i7.UserLocalDataSourceImpl(get<_i6.SharedPreferences>()));
  gh.factory<_i8.UserRemoteDataSource>(
      () => _i8.UserRemoteDataSourceImpl(get<_i4.Dio>()));
  gh.factory<_i9.UserRepository>(() => _i10.UserRepositoryImpl(
      get<_i5.NetworkInfo>(),
      get<_i8.UserRemoteDataSource>(),
      get<_i7.UserLocalDataSource>()));
  gh.factory<_i11.GetListUser>(
      () => _i11.GetListUser(get<_i9.UserRepository>()));
  gh.factory<_i12.UserBloc>(() => _i12.UserBloc(get<_i11.GetListUser>()));
  return get;
}

class _$AppModule extends _i13.AppModule {}
