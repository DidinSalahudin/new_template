import 'package:mockito/annotations.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:new_template/core/network/network_info.dart';
import 'package:new_template/features/user/data/datasources/user_local_data_source.dart';
import 'package:new_template/features/user/data/datasources/user_remote_data_source.dart';
import 'package:new_template/features/user/domain/repositories/user_repository.dart';
import 'package:new_template/features/user/domain/usecases/get_list_user.dart';
import 'package:shared_preferences/shared_preferences.dart';

@GenerateMocks(
  [
    SharedPreferences,
    NetworkInfo,
    UserLocalDataSource,
    UserRemoteDataSource,
    UserRepository,
    Connectivity,
    GetListUser,
  ],
)
void generateMocks() {}
