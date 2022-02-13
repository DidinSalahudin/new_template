// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostModel _$$_PostModelFromJson(Map<String, dynamic> json) => _$_PostModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => PostModelData.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int?,
      page: json['page'] as int?,
      limit: json['limit'] as int?,
    );

Map<String, dynamic> _$$_PostModelToJson(_$_PostModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'total': instance.total,
      'page': instance.page,
      'limit': instance.limit,
    };

_$_PostModelData _$$_PostModelDataFromJson(Map<String, dynamic> json) =>
    _$_PostModelData(
      id: json['id'] as String?,
      text: json['text'] as String?,
      image: json['image'] as String?,
      likes: json['likes'] as int?,
      link: json['link'] as String?,
      tags: json['tags'] as List<dynamic>?,
      publishDate: json['publishDate'] as String?,
      owner: json['owner'] == null
          ? null
          : UserModelData.fromJson(json['owner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PostModelDataToJson(_$_PostModelData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'image': instance.image,
      'likes': instance.likes,
      'link': instance.link,
      'tags': instance.tags,
      'publishDate': instance.publishDate,
      'owner': instance.owner,
    };
