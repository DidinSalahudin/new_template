// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FailureDataTearOff {
  const _$FailureDataTearOff();

  FailureMessage failureMessage({required String message}) {
    return FailureMessage(
      message: message,
    );
  }
}

/// @nodoc
const $FailureData = _$FailureDataTearOff();

/// @nodoc
mixin _$FailureData {
  String get message => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) failureMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? failureMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? failureMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FailureMessage value) failureMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FailureMessage value)? failureMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FailureMessage value)? failureMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FailureDataCopyWith<FailureData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureDataCopyWith<$Res> {
  factory $FailureDataCopyWith(
          FailureData value, $Res Function(FailureData) then) =
      _$FailureDataCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$FailureDataCopyWithImpl<$Res> implements $FailureDataCopyWith<$Res> {
  _$FailureDataCopyWithImpl(this._value, this._then);

  final FailureData _value;
  // ignore: unused_field
  final $Res Function(FailureData) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $FailureMessageCopyWith<$Res>
    implements $FailureDataCopyWith<$Res> {
  factory $FailureMessageCopyWith(
          FailureMessage value, $Res Function(FailureMessage) then) =
      _$FailureMessageCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class _$FailureMessageCopyWithImpl<$Res> extends _$FailureDataCopyWithImpl<$Res>
    implements $FailureMessageCopyWith<$Res> {
  _$FailureMessageCopyWithImpl(
      FailureMessage _value, $Res Function(FailureMessage) _then)
      : super(_value, (v) => _then(v as FailureMessage));

  @override
  FailureMessage get _value => super._value as FailureMessage;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(FailureMessage(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureMessage implements FailureMessage {
  const _$FailureMessage({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'FailureData.failureMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FailureMessage &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $FailureMessageCopyWith<FailureMessage> get copyWith =>
      _$FailureMessageCopyWithImpl<FailureMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) failureMessage,
  }) {
    return failureMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? failureMessage,
  }) {
    return failureMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? failureMessage,
    required TResult orElse(),
  }) {
    if (failureMessage != null) {
      return failureMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FailureMessage value) failureMessage,
  }) {
    return failureMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FailureMessage value)? failureMessage,
  }) {
    return failureMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FailureMessage value)? failureMessage,
    required TResult orElse(),
  }) {
    if (failureMessage != null) {
      return failureMessage(this);
    }
    return orElse();
  }
}

abstract class FailureMessage implements FailureData {
  const factory FailureMessage({required String message}) = _$FailureMessage;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  $FailureMessageCopyWith<FailureMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
