part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = _Initial;
  const factory UserState.getListUserOption({
    @Default(false) bool isLoading,
    required Option<Either<Failure, UserModel>> users,
  }) = _GetListUserOption;
}
