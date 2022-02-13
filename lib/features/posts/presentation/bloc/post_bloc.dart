import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:new_template/features/posts/domain/usecases/get_list_post.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/helper/no_params.dart';
import '../../data/models/post_model.dart';

part 'post_event.dart';
part 'post_state.dart';
part 'post_bloc.freezed.dart';

@injectable
class PostBloc extends Bloc<PostEvent, PostState> {
  final GetListPost _getUsecaseListPost;

  PostBloc(this._getUsecaseListPost) : super(const _Initial()) {
    on<PostEvent>(
      (event, emit) async {
        await event.when(
          getListPost: () => getListPosts(emit),
        );
      },
    );
  }

  // getListPost
  Future<dynamic> getListPosts(Emitter<PostState> emit) async {
    emit(PostState.getListPostOption(isLoading: true, posts: none()));
    final result = await _getUsecaseListPost.call(const NoParams());
    emit(PostState.getListPostOption(isLoading: true, posts: some(result)));
  }
}
