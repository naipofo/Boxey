// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NavDestinaion {
  IconData get icon => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  String get route => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavDestinaionCopyWith<NavDestinaion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavDestinaionCopyWith<$Res> {
  factory $NavDestinaionCopyWith(
          NavDestinaion value, $Res Function(NavDestinaion) then) =
      _$NavDestinaionCopyWithImpl<$Res, NavDestinaion>;
  @useResult
  $Res call({IconData icon, String label, String route});
}

/// @nodoc
class _$NavDestinaionCopyWithImpl<$Res, $Val extends NavDestinaion>
    implements $NavDestinaionCopyWith<$Res> {
  _$NavDestinaionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? label = null,
    Object? route = null,
  }) {
    return _then(_value.copyWith(
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NavDestinaionCopyWith<$Res>
    implements $NavDestinaionCopyWith<$Res> {
  factory _$$_NavDestinaionCopyWith(
          _$_NavDestinaion value, $Res Function(_$_NavDestinaion) then) =
      __$$_NavDestinaionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({IconData icon, String label, String route});
}

/// @nodoc
class __$$_NavDestinaionCopyWithImpl<$Res>
    extends _$NavDestinaionCopyWithImpl<$Res, _$_NavDestinaion>
    implements _$$_NavDestinaionCopyWith<$Res> {
  __$$_NavDestinaionCopyWithImpl(
      _$_NavDestinaion _value, $Res Function(_$_NavDestinaion) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? label = null,
    Object? route = null,
  }) {
    return _then(_$_NavDestinaion(
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NavDestinaion implements _NavDestinaion {
  const _$_NavDestinaion(
      {required this.icon, required this.label, required this.route});

  @override
  final IconData icon;
  @override
  final String label;
  @override
  final String route;

  @override
  String toString() {
    return 'NavDestinaion(icon: $icon, label: $label, route: $route)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NavDestinaion &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.route, route) || other.route == route));
  }

  @override
  int get hashCode => Object.hash(runtimeType, icon, label, route);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NavDestinaionCopyWith<_$_NavDestinaion> get copyWith =>
      __$$_NavDestinaionCopyWithImpl<_$_NavDestinaion>(this, _$identity);
}

abstract class _NavDestinaion implements NavDestinaion {
  const factory _NavDestinaion(
      {required final IconData icon,
      required final String label,
      required final String route}) = _$_NavDestinaion;

  @override
  IconData get icon;
  @override
  String get label;
  @override
  String get route;
  @override
  @JsonKey(ignore: true)
  _$$_NavDestinaionCopyWith<_$_NavDestinaion> get copyWith =>
      throw _privateConstructorUsedError;
}
