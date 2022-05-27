// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'motivation_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MotivationStateTearOff {
  const _$MotivationStateTearOff();

  _MotivationState call(
      {List<MotivationModel> results = const [],
      Status status = Status.initial,
      String? errorMessage}) {
    return _MotivationState(
      results: results,
      status: status,
      errorMessage: errorMessage,
    );
  }
}

/// @nodoc
const $MotivationState = _$MotivationStateTearOff();

/// @nodoc
mixin _$MotivationState {
  List<MotivationModel> get results => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MotivationStateCopyWith<MotivationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MotivationStateCopyWith<$Res> {
  factory $MotivationStateCopyWith(
          MotivationState value, $Res Function(MotivationState) then) =
      _$MotivationStateCopyWithImpl<$Res>;
  $Res call(
      {List<MotivationModel> results, Status status, String? errorMessage});
}

/// @nodoc
class _$MotivationStateCopyWithImpl<$Res>
    implements $MotivationStateCopyWith<$Res> {
  _$MotivationStateCopyWithImpl(this._value, this._then);

  final MotivationState _value;
  // ignore: unused_field
  final $Res Function(MotivationState) _then;

  @override
  $Res call({
    Object? results = freezed,
    Object? status = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MotivationModel>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$MotivationStateCopyWith<$Res>
    implements $MotivationStateCopyWith<$Res> {
  factory _$MotivationStateCopyWith(
          _MotivationState value, $Res Function(_MotivationState) then) =
      __$MotivationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<MotivationModel> results, Status status, String? errorMessage});
}

/// @nodoc
class __$MotivationStateCopyWithImpl<$Res>
    extends _$MotivationStateCopyWithImpl<$Res>
    implements _$MotivationStateCopyWith<$Res> {
  __$MotivationStateCopyWithImpl(
      _MotivationState _value, $Res Function(_MotivationState) _then)
      : super(_value, (v) => _then(v as _MotivationState));

  @override
  _MotivationState get _value => super._value as _MotivationState;

  @override
  $Res call({
    Object? results = freezed,
    Object? status = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_MotivationState(
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MotivationModel>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_MotivationState implements _MotivationState {
  _$_MotivationState(
      {this.results = const [],
      this.status = Status.initial,
      this.errorMessage});

  @JsonKey()
  @override
  final List<MotivationModel> results;
  @JsonKey()
  @override
  final Status status;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'MotivationState(results: $results, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MotivationState &&
            const DeepCollectionEquality().equals(other.results, results) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(results),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$MotivationStateCopyWith<_MotivationState> get copyWith =>
      __$MotivationStateCopyWithImpl<_MotivationState>(this, _$identity);
}

abstract class _MotivationState implements MotivationState {
  factory _MotivationState(
      {List<MotivationModel> results,
      Status status,
      String? errorMessage}) = _$_MotivationState;

  @override
  List<MotivationModel> get results;
  @override
  Status get status;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$MotivationStateCopyWith<_MotivationState> get copyWith =>
      throw _privateConstructorUsedError;
}
