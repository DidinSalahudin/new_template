import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  factory UserModel({
    List<UserModelData>? data,
    int? total,
    int? page,
    int? limit,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}

@freezed
class UserModelData with _$UserModelData {
  factory UserModelData({
    String? id,
    String? title,
    String? firstName,
    String? lastName,
    String? picture,
  }) = _UserModelData;

  factory UserModelData.fromJson(Map<String, dynamic> json) => _$UserModelDataFromJson(json);
}
