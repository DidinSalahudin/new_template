import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../user/data/models/user_model.dart';

part 'post_model.freezed.dart';
part 'post_model.g.dart';

@freezed
class PostModel with _$PostModel {
  factory PostModel({
    List<PostModelData>? data,
    int? total,
    int? page,
    int? limit,
  }) = _PostModel;

  factory PostModel.fromJson(Map<String, dynamic> json) => _$PostModelFromJson(json);
}

@freezed
class PostModelData with _$PostModelData {
  factory PostModelData({
    String? id,
    String? text,
    String? image,
    int? likes,
    String? link,
    List? tags,
    String? publishDate,
    UserModelData? owner,
  }) = _PostModelData;

  factory PostModelData.fromJson(Map<String, dynamic> json) => _$PostModelDataFromJson(json);
}
