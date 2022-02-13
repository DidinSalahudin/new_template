part of 'post_bloc.dart';

@freezed
class PostState with _$PostState {
  const factory PostState.initial() = _Initial;
  const factory PostState.getListPostOption({
    @Default(false) bool isLoading,
    required Option<Either<FailureData, PostModel>> posts,
  }) = _GetListPostOption;
}
