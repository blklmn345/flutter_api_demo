// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApiResponse<R> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(R response) success,
    required TResult Function(DioError error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(R response)? success,
    TResult Function(DioError error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(R response)? success,
    TResult Function(DioError error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success<R> value) success,
    required TResult Function(Failure<R> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Success<R> value)? success,
    TResult Function(Failure<R> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success<R> value)? success,
    TResult Function(Failure<R> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseCopyWith<R, $Res> {
  factory $ApiResponseCopyWith(
          ApiResponse<R> value, $Res Function(ApiResponse<R>) then) =
      _$ApiResponseCopyWithImpl<R, $Res>;
}

/// @nodoc
class _$ApiResponseCopyWithImpl<R, $Res>
    implements $ApiResponseCopyWith<R, $Res> {
  _$ApiResponseCopyWithImpl(this._value, this._then);

  final ApiResponse<R> _value;
  // ignore: unused_field
  final $Res Function(ApiResponse<R>) _then;
}

/// @nodoc
abstract class _$$SuccessCopyWith<R, $Res> {
  factory _$$SuccessCopyWith(
          _$Success<R> value, $Res Function(_$Success<R>) then) =
      __$$SuccessCopyWithImpl<R, $Res>;
  $Res call({R response});
}

/// @nodoc
class __$$SuccessCopyWithImpl<R, $Res>
    extends _$ApiResponseCopyWithImpl<R, $Res>
    implements _$$SuccessCopyWith<R, $Res> {
  __$$SuccessCopyWithImpl(
      _$Success<R> _value, $Res Function(_$Success<R>) _then)
      : super(_value, (v) => _then(v as _$Success<R>));

  @override
  _$Success<R> get _value => super._value as _$Success<R>;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_$Success<R>(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as R,
    ));
  }
}

/// @nodoc

class _$Success<R> implements Success<R> {
  const _$Success(this.response);

  @override
  final R response;

  @override
  String toString() {
    return 'ApiResponse<$R>.success(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Success<R> &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(response));

  @JsonKey(ignore: true)
  @override
  _$$SuccessCopyWith<R, _$Success<R>> get copyWith =>
      __$$SuccessCopyWithImpl<R, _$Success<R>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(R response) success,
    required TResult Function(DioError error) failure,
  }) {
    return success(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(R response)? success,
    TResult Function(DioError error)? failure,
  }) {
    return success?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(R response)? success,
    TResult Function(DioError error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success<R> value) success,
    required TResult Function(Failure<R> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Success<R> value)? success,
    TResult Function(Failure<R> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success<R> value)? success,
    TResult Function(Failure<R> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success<R> implements ApiResponse<R> {
  const factory Success(final R response) = _$Success<R>;

  R get response;
  @JsonKey(ignore: true)
  _$$SuccessCopyWith<R, _$Success<R>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureCopyWith<R, $Res> {
  factory _$$FailureCopyWith(
          _$Failure<R> value, $Res Function(_$Failure<R>) then) =
      __$$FailureCopyWithImpl<R, $Res>;
  $Res call({DioError error});
}

/// @nodoc
class __$$FailureCopyWithImpl<R, $Res>
    extends _$ApiResponseCopyWithImpl<R, $Res>
    implements _$$FailureCopyWith<R, $Res> {
  __$$FailureCopyWithImpl(
      _$Failure<R> _value, $Res Function(_$Failure<R>) _then)
      : super(_value, (v) => _then(v as _$Failure<R>));

  @override
  _$Failure<R> get _value => super._value as _$Failure<R>;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$Failure<R>(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as DioError,
    ));
  }
}

/// @nodoc

class _$Failure<R> implements Failure<R> {
  const _$Failure(this.error);

  @override
  final DioError error;

  @override
  String toString() {
    return 'ApiResponse<$R>.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Failure<R> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$FailureCopyWith<R, _$Failure<R>> get copyWith =>
      __$$FailureCopyWithImpl<R, _$Failure<R>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(R response) success,
    required TResult Function(DioError error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(R response)? success,
    TResult Function(DioError error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(R response)? success,
    TResult Function(DioError error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success<R> value) success,
    required TResult Function(Failure<R> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Success<R> value)? success,
    TResult Function(Failure<R> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success<R> value)? success,
    TResult Function(Failure<R> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Failure<R> implements ApiResponse<R> {
  const factory Failure(final DioError error) = _$Failure<R>;

  DioError get error;
  @JsonKey(ignore: true)
  _$$FailureCopyWith<R, _$Failure<R>> get copyWith =>
      throw _privateConstructorUsedError;
}
