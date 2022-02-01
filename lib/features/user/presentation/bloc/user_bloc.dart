import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:new_template/core/error/failures.dart';
import 'package:new_template/core/helper/no_params.dart';
import 'package:new_template/features/user/data/models/user_model.dart';
import 'package:new_template/features/user/domain/usecases/get_list_user.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(const _Initial()) {
    on<UserEvent>((event, emit) async {
      await event.when(
        getListUser: () => getListUsers(emit),
      );
    });
  }
}

late GetListUser getListUser;

Future<dynamic> getListUsers(Emitter<UserState> emit) async {
  emit(
    UserState.getListUserOption(
      isLoading: true,
      users: none(),
    ),
  );
  final Either<Failure, List<UserModel>> result = await getListUser.call(const NoParams());
  emit(
    result.fold(
      (l) => UserState.getListUserOption(
        isLoading: true,
        users: none(),
      ),
      (r) => UserState.getListUserOption(
        isLoading: true,
        users: optionOf(r),
      ),
    ),
  );
}
