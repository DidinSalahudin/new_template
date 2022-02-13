// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostModel _$PostModelFromJson(Map<String, dynamic> json) {
  return _PostModel.fromJson(json);
}

/// @nodoc
class _$PostModelTearOff {
  const _$PostModelTearOff();

  _PostModel call(
      {List<PostModelData>? data, int? total, int? page, int? limit}) {
    return _PostModel(
      data: data,
      total: total,
      page: page,
      limit: limit,
    );
  }

  PostModel fromJson(Map<String, Object?> json) {
    return PostModel.fromJson(json);
  }
}

/// @nodoc
const $PostModel = _$PostModelTearOff();

/// @nodoc
mixin _$PostModel {
  List<PostModelData>? get data => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostModelCopyWith<PostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostModelCopyWith<$Res> {
  factory $PostModelCopyWith(PostModel value, $Res Function(PostModel) then) =
      _$PostModelCopyWithImpl<$Res>;
  $Res call({List<PostModelData>? data, int? total, int? page, int? limit});
}

/// @nodoc
class _$PostModelCopyWithImpl<$Res> implements $PostModelCopyWith<$Res> {
  _$PostModelCopyWithImpl(this._value, this._then);

  final PostModel _value;
  // ignore: unused_field
  final $Res Function(PostModel) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? total = freezed,
    Object? page = freezed,
    Object? limit = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PostModelData>?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$PostModelCopyWith<$Res> implements $PostModelCopyWith<$Res> {
  factory _$PostModelCopyWith(
          _PostModel value, $Res Function(_PostModel) then) =
      __$PostModelCopyWithImpl<$Res>;
  @override
  $Res call({List<PostModelData>? data, int? total, int? page, int? limit});
}

/// @nodoc
class __$PostModelCopyWithImpl<$Res> extends _$PostModelCopyWithImpl<$Res>
    implements _$PostModelCopyWith<$Res> {
  __$PostModelCopyWithImpl(_PostModel _value, $Res Function(_PostModel) _then)
      : super(_value, (v) => _then(v as _PostModel));

  @override
  _PostModel get _value => super._value as _PostModel;

  @override
  $Res call({
    Object? data = freezed,
    Object? total = freezed,
    Object? page = freezed,
    Object? limit = freezed,
  }) {
    return _then(_PostModel(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PostModelData>?,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostModel implements _PostModel {
  _$_PostModel({this.data, this.total, this.page, this.limit});

  factory _$_PostModel.fromJson(Map<String, dynamic> json) =>
      _$$_PostModelFromJson(json);

  @override
  final List<PostModelData>? data;
  @override
  final int? total;
  @override
  final int? page;
  @override
  final int? limit;

  @override
  String toString() {
    return 'PostModel(data: $data, total: $total, page: $page, limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostModel &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.limit, limit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(total),
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(limit));

  @JsonKey(ignore: true)
  @override
  _$PostModelCopyWith<_PostModel> get copyWith =>
      __$PostModelCopyWithImpl<_PostModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostModelToJson(this);
  }
}

abstract class _PostModel implements PostModel {
  factory _PostModel(
      {List<PostModelData>? data,
      int? total,
      int? page,
      int? limit}) = _$_PostModel;

  factory _PostModel.fromJson(Map<String, dynamic> json) =
      _$_PostModel.fromJson;

  @override
  List<PostModelData>? get data;
  @override
  int? get total;
  @override
  int? get page;
  @override
  int? get limit;
  @override
  @JsonKey(ignore: true)
  _$PostModelCopyWith<_PostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

PostModelData _$PostModelDataFromJson(Map<String, dynamic> json) {
  return _PostModelData.fromJson(json);
}

/// @nodoc
class _$PostModelDataTearOff {
  const _$PostModelDataTearOff();

  _PostModelData call(
      {String? id,
      String? text,
      String? image,
      int? likes,
      String? link,
      List<dynamic>? tags,
      String? publishDate,
      UserModelData? owner}) {
    return _PostModelData(
      id: id,
      text: text,
      image: image,
      likes: likes,
      link: link,
      tags: tags,
      publishDate: publishDate,
      owner: owner,
    );
  }

  PostModelData fromJson(Map<String, Object?> json) {
    return PostModelData.fromJson(json);
  }
}

/// @nodoc
const $PostModelData = _$PostModelDataTearOff();

/// @nodoc
mixin _$PostModelData {
  String? get id => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  int? get likes => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  List<dynamic>? get tags => throw _privateConstructorUsedError;
  String? get publishDate => throw _privateConstructorUsedError;
  UserModelData? get owner => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostModelDataCopyWith<PostModelData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostModelDataCopyWith<$Res> {
  factory $PostModelDataCopyWith(
          PostModelData value, $Res Function(PostModelData) then) =
      _$PostModelDataCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? text,
      String? image,
      int? likes,
      String? link,
      List<dynamic>? tags,
      String? publishDate,
      UserModelData? owner});

  $UserModelDataCopyWith<$Res>? get owner;
}

/// @nodoc
class _$PostModelDataCopyWithImpl<$Res>
    implements $PostModelDataCopyWith<$Res> {
  _$PostModelDataCopyWithImpl(this._value, this._then);

  final PostModelData _value;
  // ignore: unused_field
  final $Res Function(PostModelData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? image = freezed,
    Object? likes = freezed,
    Object? link = freezed,
    Object? tags = freezed,
    Object? publishDate = freezed,
    Object? owner = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int?,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      publishDate: publishDate == freezed
          ? _value.publishDate
          : publishDate // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as UserModelData?,
    ));
  }

  @override
  $UserModelDataCopyWith<$Res>? get owner {
    if (_value.owner == null) {
      return null;
    }

    return $UserModelDataCopyWith<$Res>(_value.owner!, (value) {
      return _then(_value.copyWith(owner: value));
    });
  }
}

/// @nodoc
abstract class _$PostModelDataCopyWith<$Res>
    implements $PostModelDataCopyWith<$Res> {
  factory _$PostModelDataCopyWith(
          _PostModelData value, $Res Function(_PostModelData) then) =
      __$PostModelDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? text,
      String? image,
      int? likes,
      String? link,
      List<dynamic>? tags,
      String? publishDate,
      UserModelData? owner});

  @override
  $UserModelDataCopyWith<$Res>? get owner;
}

/// @nodoc
class __$PostModelDataCopyWithImpl<$Res>
    extends _$PostModelDataCopyWithImpl<$Res>
    implements _$PostModelDataCopyWith<$Res> {
  __$PostModelDataCopyWithImpl(
      _PostModelData _value, $Res Function(_PostModelData) _then)
      : super(_value, (v) => _then(v as _PostModelData));

  @override
  _PostModelData get _value => super._value as _PostModelData;

  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? image = freezed,
    Object? likes = freezed,
    Object? link = freezed,
    Object? tags = freezed,
    Object? publishDate = freezed,
    Object? owner = freezed,
  }) {
    return _then(_PostModelData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int?,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      publishDate: publishDate == freezed
          ? _value.publishDate
          : publishDate // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as UserModelData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostModelData implements _PostModelData {
  _$_PostModelData(
      {this.id,
      this.text,
      this.image,
      this.likes,
      this.link,
      this.tags,
      this.publishDate,
      this.owner});

  factory _$_PostModelData.fromJson(Map<String, dynamic> json) =>
      _$$_PostModelDataFromJson(json);

  @override
  final String? id;
  @override
  final String? text;
  @override
  final String? image;
  @override
  final int? likes;
  @override
  final String? link;
  @override
  final List<dynamic>? tags;
  @override
  final String? publishDate;
  @override
  final UserModelData? owner;

  @override
  String toString() {
    return 'PostModelData(id: $id, text: $text, image: $image, likes: $likes, link: $link, tags: $tags, publishDate: $publishDate, owner: $owner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostModelData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.likes, likes) &&
            const DeepCollectionEquality().equals(other.link, link) &&
            const DeepCollectionEquality().equals(other.tags, tags) &&
            const DeepCollectionEquality()
                .equals(other.publishDate, publishDate) &&
            const DeepCollectionEquality().equals(other.owner, owner));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(likes),
      const DeepCollectionEquality().hash(link),
      const DeepCollectionEquality().hash(tags),
      const DeepCollectionEquality().hash(publishDate),
      const DeepCollectionEquality().hash(owner));

  @JsonKey(ignore: true)
  @override
  _$PostModelDataCopyWith<_PostModelData> get copyWith =>
      __$PostModelDataCopyWithImpl<_PostModelData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostModelDataToJson(this);
  }
}

abstract class _PostModelData implements PostModelData {
  factory _PostModelData(
      {String? id,
      String? text,
      String? image,
      int? likes,
      String? link,
      List<dynamic>? tags,
      String? publishDate,
      UserModelData? owner}) = _$_PostModelData;

  factory _PostModelData.fromJson(Map<String, dynamic> json) =
      _$_PostModelData.fromJson;

  @override
  String? get id;
  @override
  String? get text;
  @override
  String? get image;
  @override
  int? get likes;
  @override
  String? get link;
  @override
  List<dynamic>? get tags;
  @override
  String? get publishDate;
  @override
  UserModelData? get owner;
  @override
  @JsonKey(ignore: true)
  _$PostModelDataCopyWith<_PostModelData> get copyWith =>
      throw _privateConstructorUsedError;
}
