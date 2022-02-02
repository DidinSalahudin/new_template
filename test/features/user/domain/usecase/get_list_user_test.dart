import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:new_template/core/helper/no_params.dart';
import 'package:new_template/features/user/domain/usecases/get_list_user.dart';

import '../../../../mocks/generate_mocks.mocks.dart';
import '../../../../mocks/mock_user_models.dart';

void main() {
  late GetListUser usecase;
  late MockUserRepository mockUserRepository;

  group('GetUsers Usecase', () {
    setUp(() {
      mockUserRepository = MockUserRepository();
      usecase = GetListUser(mockUserRepository);
    });

    test(
      "Harus Mendapatakan List User dari repository",
      () async {
        when(mockUserRepository.requestGetListUser()).thenAnswer(
          (_) async => Right(userModel),
        );

        final result = await usecase.call(noParams);

        expect(result, Right(userModel));
        verify(mockUserRepository.requestGetListUser());
        verifyNoMoreInteractions(mockUserRepository);
      },
    );
  });
}
