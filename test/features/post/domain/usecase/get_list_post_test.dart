import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:new_template/core/helper/no_params.dart';
import 'package:new_template/features/posts/domain/usecases/get_list_post.dart';

import '../../../../mocks/generate_mocks.mocks.dart';
import '../../../../mocks/mock_user_models.dart';

void main() {
  late GetListPost usecase;
  late MockPostRepository mockPostRepository;

  group('GetPosts Usecase', () {
    setUp(() {
      mockPostRepository = MockPostRepository();
      usecase = GetListPost(mockPostRepository);
    });

    test(
      "Harus Mendapatakan List Post dari repository",
      () async {
        when(mockPostRepository.requestGetListPost()).thenAnswer(
          (_) async => Right(postModel),
        );

        final result = await usecase.call(noParams);

        expect(result, Right(postModel));
        verify(mockPostRepository.requestGetListPost());
        verifyNoMoreInteractions(mockPostRepository);
      },
    );
  });
}
