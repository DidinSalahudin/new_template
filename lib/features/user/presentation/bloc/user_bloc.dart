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
  final GetListUser _getUsecaseListUser;

  UserBloc(this._getUsecaseListUser) : super(const UserState.initial()) {
    on<UserEvent>(
      (event, emit) async {
        await event.when(
          getListUser: () => getListUsers(emit),
        );
      },
    );
  }

  Future<dynamic> getListUsers(Emitter<UserState> emit) async {
    emit(UserState.getListUserOption(isLoading: true, users: none()));
    final result = await _getUsecaseListUser.call(const NoParams());
    emit(UserState.getListUserOption(isLoading: true, users: some(result)));
  }
}
