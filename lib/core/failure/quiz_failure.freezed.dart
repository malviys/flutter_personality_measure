// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'quiz_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$QuizFailureTearOff {
  const _$QuizFailureTearOff();

// ignore: unused_element
  NoQuestionFound noQuestionFound() {
    return const NoQuestionFound();
  }
}

/// @nodoc
// ignore: unused_element
const $QuizFailure = _$QuizFailureTearOff();

/// @nodoc
mixin _$QuizFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult noQuestionFound(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult noQuestionFound(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult noQuestionFound(NoQuestionFound value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult noQuestionFound(NoQuestionFound value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $QuizFailureCopyWith<$Res> {
  factory $QuizFailureCopyWith(
          QuizFailure value, $Res Function(QuizFailure) then) =
      _$QuizFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$QuizFailureCopyWithImpl<$Res> implements $QuizFailureCopyWith<$Res> {
  _$QuizFailureCopyWithImpl(this._value, this._then);

  final QuizFailure _value;
  // ignore: unused_field
  final $Res Function(QuizFailure) _then;
}

/// @nodoc
abstract class $NoQuestionFoundCopyWith<$Res> {
  factory $NoQuestionFoundCopyWith(
          NoQuestionFound value, $Res Function(NoQuestionFound) then) =
      _$NoQuestionFoundCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoQuestionFoundCopyWithImpl<$Res>
    extends _$QuizFailureCopyWithImpl<$Res>
    implements $NoQuestionFoundCopyWith<$Res> {
  _$NoQuestionFoundCopyWithImpl(
      NoQuestionFound _value, $Res Function(NoQuestionFound) _then)
      : super(_value, (v) => _then(v as NoQuestionFound));

  @override
  NoQuestionFound get _value => super._value as NoQuestionFound;
}

/// @nodoc
class _$NoQuestionFound implements NoQuestionFound {
  const _$NoQuestionFound();

  @override
  String toString() {
    return 'QuizFailure.noQuestionFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NoQuestionFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult noQuestionFound(),
  }) {
    assert(noQuestionFound != null);
    return noQuestionFound();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult noQuestionFound(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (noQuestionFound != null) {
      return noQuestionFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult noQuestionFound(NoQuestionFound value),
  }) {
    assert(noQuestionFound != null);
    return noQuestionFound(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult noQuestionFound(NoQuestionFound value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (noQuestionFound != null) {
      return noQuestionFound(this);
    }
    return orElse();
  }
}

abstract class NoQuestionFound implements QuizFailure {
  const factory NoQuestionFound() = _$NoQuestionFound;
}
