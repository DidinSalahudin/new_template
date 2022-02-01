// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
class _$UserModelTearOff {
  const _$UserModelTearOff();

  _UserModel call(
      {List<UserModelData>? data, int? total, int? page, int? limit}) {
    return _UserModel(
      data: data,
      total: total,
      page: page,
      limit: limit,
    );
  }

  UserModel fromJson(Map<String, Object?> json) {
    return UserModel.fromJson(json);
  }
}

/// @nodoc
const $UserModel = _$UserModelTearOff();

/// @nodoc
mixin _$UserModel {
  List<UserModelData>? get data => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res>;
  $Res call({List<UserModelData>? data, int? total, int? page, int? limit});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res> implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  final UserModel _value;
  // ignore: unused_field
  final $Res Function(UserModel) _then;

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
              as List<UserModelData>?,
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
abstract class _$UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$UserModelCopyWith(
          _UserModel value, $Res Function(_UserModel) then) =
      __$UserModelCopyWithImpl<$Res>;
  @override
  $Res call({List<UserModelData>? data, int? total, int? page, int? limit});
}

/// @nodoc
class __$UserModelCopyWithImpl<$Res> extends _$UserModelCopyWithImpl<$Res>
    implements _$UserModelCopyWith<$Res> {
  __$UserModelCopyWithImpl(_UserModel _value, $Res Function(_UserModel) _then)
      : super(_value, (v) => _then(v as _UserModel));

  @override
  _UserModel get _value => super._value as _UserModel;

  @override
  $Res call({
    Object? data = freezed,
    Object? total = freezed,
    Object? page = freezed,
    Object? limit = freezed,
  }) {
    return _then(_UserModel(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UserModelData>?,
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
class _$_UserModel implements _UserModel {
  _$_UserModel({this.data, this.total, this.page, this.limit});

  factory _$_UserModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserModelFromJson(json);

  @override
  final List<UserModelData>? data;
  @override
  final int? total;
  @override
  final int? page;
  @override
  final int? limit;

  @override
  String toString() {
    return 'UserModel(data: $data, total: $total, page: $page, limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserModel &&
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
  _$UserModelCopyWith<_UserModel> get copyWith =>
      __$UserModelCopyWithImpl<_UserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserModelToJson(this);
  }
}

abstract class _UserModel implements UserModel {
  factory _UserModel(
      {List<UserModelData>? data,
      int? total,
      int? page,
      int? limit}) = _$_UserModel;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$_UserModel.fromJson;

  @override
  List<UserModelData>? get data;
  @override
  int? get total;
  @override
  int? get page;
  @override
  int? get limit;
  @override
  @JsonKey(ignore: true)
  _$UserModelCopyWith<_UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

UserModelData _$UserModelDataFromJson(Map<String, dynamic> json) {
  return _UserModelData.fromJson(json);
}

/// @nodoc
class _$UserModelDataTearOff {
  const _$UserModelDataTearOff();

  _UserModelData call(
      {String? id,
      String? title,
      String? firstName,
      String? lastName,
      String? picture}) {
    return _UserModelData(
      id: id,
      title: title,
      firstName: firstName,
      lastName: lastName,
      picture: picture,
    );
  }

  UserModelData fromJson(Map<String, Object?> json) {
    return UserModelData.fromJson(json);
  }
}

/// @nodoc
const $UserModelData = _$UserModelDataTearOff();

/// @nodoc
mixin _$UserModelData {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get picture => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelDataCopyWith<UserModelData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelDataCopyWith<$Res> {
  factory $UserModelDataCopyWith(
          UserModelData value, $Res Function(UserModelData) then) =
      _$UserModelDataCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? title,
      String? firstName,
      String? lastName,
      String? picture});
}

/// @nodoc
class _$UserModelDataCopyWithImpl<$Res>
    implements $UserModelDataCopyWith<$Res> {
  _$UserModelDataCopyWithImpl(this._value, this._then);

  final UserModelData _value;
  // ignore: unused_field
  final $Res Function(UserModelData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? picture = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UserModelDataCopyWith<$Res>
    implements $UserModelDataCopyWith<$Res> {
  factory _$UserModelDataCopyWith(
          _UserModelData value, $Res Function(_UserModelData) then) =
      __$UserModelDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? title,
      String? firstName,
      String? lastName,
      String? picture});
}

/// @nodoc
class __$UserModelDataCopyWithImpl<$Res>
    extends _$UserModelDataCopyWithImpl<$Res>
    implements _$UserModelDataCopyWith<$Res> {
  __$UserModelDataCopyWithImpl(
      _UserModelData _value, $Res Function(_UserModelData) _then)
      : super(_value, (v) => _then(v as _UserModelData));

  @override
  _UserModelData get _value => super._value as _UserModelData;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? picture = freezed,
  }) {
    return _then(_UserModelData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserModelData implements _UserModelData {
  _$_UserModelData(
      {this.id, this.title, this.firstName, this.lastName, this.picture});

  factory _$_UserModelData.fromJson(Map<String, dynamic> json) =>
      _$$_UserModelDataFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? picture;

  @override
  String toString() {
    return 'UserModelData(id: $id, title: $title, firstName: $firstName, lastName: $lastName, picture: $picture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserModelData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.picture, picture));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(picture));

  @JsonKey(ignore: true)
  @override
  _$UserModelDataCopyWith<_UserModelData> get copyWith =>
      __$UserModelDataCopyWithImpl<_UserModelData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserModelDataToJson(this);
  }
}

abstract class _UserModelData implements UserModelData {
  factory _UserModelData(
      {String? id,
      String? title,
      String? firstName,
      String? lastName,
      String? picture}) = _$_UserModelData;

  factory _UserModelData.fromJson(Map<String, dynamic> json) =
      _$_UserModelData.fromJson;

  @override
  String? get id;
  @override
  String? get title;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get picture;
  @override
  @JsonKey(ignore: true)
  _$UserModelDataCopyWith<_UserModelData> get copyWith =>
      throw _privateConstructorUsedError;
}
