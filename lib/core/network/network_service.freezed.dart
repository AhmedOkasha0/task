// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NetworkService<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) succeed,
    required TResult Function(NetworkExceptions networkExceptions) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? succeed,
    TResult? Function(NetworkExceptions networkExceptions)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? succeed,
    TResult Function(NetworkExceptions networkExceptions)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Succeed<T> value) succeed,
    required TResult Function(Failure<T> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Succeed<T> value)? succeed,
    TResult? Function(Failure<T> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Succeed<T> value)? succeed,
    TResult Function(Failure<T> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkServiceCopyWith<T, $Res> {
  factory $NetworkServiceCopyWith(
          NetworkService<T> value, $Res Function(NetworkService<T>) then) =
      _$NetworkServiceCopyWithImpl<T, $Res, NetworkService<T>>;
}

/// @nodoc
class _$NetworkServiceCopyWithImpl<T, $Res, $Val extends NetworkService<T>>
    implements $NetworkServiceCopyWith<T, $Res> {
  _$NetworkServiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NetworkService
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SucceedImplCopyWith<T, $Res> {
  factory _$$SucceedImplCopyWith(
          _$SucceedImpl<T> value, $Res Function(_$SucceedImpl<T>) then) =
      __$$SucceedImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$SucceedImplCopyWithImpl<T, $Res>
    extends _$NetworkServiceCopyWithImpl<T, $Res, _$SucceedImpl<T>>
    implements _$$SucceedImplCopyWith<T, $Res> {
  __$$SucceedImplCopyWithImpl(
      _$SucceedImpl<T> _value, $Res Function(_$SucceedImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of NetworkService
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SucceedImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SucceedImpl<T> implements Succeed<T> {
  const _$SucceedImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'NetworkService<$T>.succeed(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SucceedImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of NetworkService
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SucceedImplCopyWith<T, _$SucceedImpl<T>> get copyWith =>
      __$$SucceedImplCopyWithImpl<T, _$SucceedImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) succeed,
    required TResult Function(NetworkExceptions networkExceptions) failure,
  }) {
    return succeed(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? succeed,
    TResult? Function(NetworkExceptions networkExceptions)? failure,
  }) {
    return succeed?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? succeed,
    TResult Function(NetworkExceptions networkExceptions)? failure,
    required TResult orElse(),
  }) {
    if (succeed != null) {
      return succeed(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Succeed<T> value) succeed,
    required TResult Function(Failure<T> value) failure,
  }) {
    return succeed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Succeed<T> value)? succeed,
    TResult? Function(Failure<T> value)? failure,
  }) {
    return succeed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Succeed<T> value)? succeed,
    TResult Function(Failure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (succeed != null) {
      return succeed(this);
    }
    return orElse();
  }
}

abstract class Succeed<T> implements NetworkService<T> {
  const factory Succeed(final T data) = _$SucceedImpl<T>;

  T get data;

  /// Create a copy of NetworkService
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SucceedImplCopyWith<T, _$SucceedImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<T, $Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl<T> value, $Res Function(_$FailureImpl<T>) then) =
      __$$FailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({NetworkExceptions networkExceptions});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<T, $Res>
    extends _$NetworkServiceCopyWithImpl<T, $Res, _$FailureImpl<T>>
    implements _$$FailureImplCopyWith<T, $Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl<T> _value, $Res Function(_$FailureImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of NetworkService
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? networkExceptions = freezed,
  }) {
    return _then(_$FailureImpl<T>(
      freezed == networkExceptions
          ? _value.networkExceptions
          : networkExceptions // ignore: cast_nullable_to_non_nullable
              as NetworkExceptions,
    ));
  }
}

/// @nodoc

class _$FailureImpl<T> implements Failure<T> {
  const _$FailureImpl(this.networkExceptions);

  @override
  final NetworkExceptions networkExceptions;

  @override
  String toString() {
    return 'NetworkService<$T>.failure(networkExceptions: $networkExceptions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.networkExceptions, networkExceptions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(networkExceptions));

  /// Create a copy of NetworkService
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<T, _$FailureImpl<T>> get copyWith =>
      __$$FailureImplCopyWithImpl<T, _$FailureImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) succeed,
    required TResult Function(NetworkExceptions networkExceptions) failure,
  }) {
    return failure(networkExceptions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? succeed,
    TResult? Function(NetworkExceptions networkExceptions)? failure,
  }) {
    return failure?.call(networkExceptions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? succeed,
    TResult Function(NetworkExceptions networkExceptions)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(networkExceptions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Succeed<T> value) succeed,
    required TResult Function(Failure<T> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Succeed<T> value)? succeed,
    TResult? Function(Failure<T> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Succeed<T> value)? succeed,
    TResult Function(Failure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure<T> implements NetworkService<T> {
  const factory Failure(final NetworkExceptions networkExceptions) =
      _$FailureImpl<T>;

  NetworkExceptions get networkExceptions;

  /// Create a copy of NetworkService
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailureImplCopyWith<T, _$FailureImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
