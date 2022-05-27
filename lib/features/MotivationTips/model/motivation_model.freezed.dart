// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'motivation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MotivationModel _$MotivationModelFromJson(Map<String, dynamic> json) {
  return _MotivationModel.fromJson(json);
}

/// @nodoc
class _$MotivationModelTearOff {
  const _$MotivationModelTearOff();

  _MotivationModel call(int id, String contents, String name) {
    return _MotivationModel(
      id,
      contents,
      name,
    );
  }

  MotivationModel fromJson(Map<String, Object?> json) {
    return MotivationModel.fromJson(json);
  }
}

/// @nodoc
const $MotivationModel = _$MotivationModelTearOff();

/// @nodoc
mixin _$MotivationModel {
  int get id => throw _privateConstructorUsedError;
  String get contents => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MotivationModelCopyWith<MotivationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MotivationModelCopyWith<$Res> {
  factory $MotivationModelCopyWith(
          MotivationModel value, $Res Function(MotivationModel) then) =
      _$MotivationModelCopyWithImpl<$Res>;
  $Res call({int id, String contents, String name});
}

/// @nodoc
class _$MotivationModelCopyWithImpl<$Res>
    implements $MotivationModelCopyWith<$Res> {
  _$MotivationModelCopyWithImpl(this._value, this._then);

  final MotivationModel _value;
  // ignore: unused_field
  final $Res Function(MotivationModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? contents = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      contents: contents == freezed
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MotivationModelCopyWith<$Res>
    implements $MotivationModelCopyWith<$Res> {
  factory _$MotivationModelCopyWith(
          _MotivationModel value, $Res Function(_MotivationModel) then) =
      __$MotivationModelCopyWithImpl<$Res>;
  @override
  $Res call({int id, String contents, String name});
}

/// @nodoc
class __$MotivationModelCopyWithImpl<$Res>
    extends _$MotivationModelCopyWithImpl<$Res>
    implements _$MotivationModelCopyWith<$Res> {
  __$MotivationModelCopyWithImpl(
      _MotivationModel _value, $Res Function(_MotivationModel) _then)
      : super(_value, (v) => _then(v as _MotivationModel));

  @override
  _MotivationModel get _value => super._value as _MotivationModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? contents = freezed,
    Object? name = freezed,
  }) {
    return _then(_MotivationModel(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      contents == freezed
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as String,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MotivationModel implements _MotivationModel {
  _$_MotivationModel(this.id, this.contents, this.name);

  factory _$_MotivationModel.fromJson(Map<String, dynamic> json) =>
      _$$_MotivationModelFromJson(json);

  @override
  final int id;
  @override
  final String contents;
  @override
  final String name;

  @override
  String toString() {
    return 'MotivationModel(id: $id, contents: $contents, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MotivationModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.contents, contents) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(contents),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$MotivationModelCopyWith<_MotivationModel> get copyWith =>
      __$MotivationModelCopyWithImpl<_MotivationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MotivationModelToJson(this);
  }
}

abstract class _MotivationModel implements MotivationModel {
  factory _MotivationModel(int id, String contents, String name) =
      _$_MotivationModel;

  factory _MotivationModel.fromJson(Map<String, dynamic> json) =
      _$_MotivationModel.fromJson;

  @override
  int get id;
  @override
  String get contents;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$MotivationModelCopyWith<_MotivationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
