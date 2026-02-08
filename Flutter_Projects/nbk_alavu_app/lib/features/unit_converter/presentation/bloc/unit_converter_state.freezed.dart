// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unit_converter_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UnitConverterState {

 double? get areaValue; AreaUnit get areaUnit; double? get lengthValue; UnitType get lengthUnit;
/// Create a copy of UnitConverterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnitConverterStateCopyWith<UnitConverterState> get copyWith => _$UnitConverterStateCopyWithImpl<UnitConverterState>(this as UnitConverterState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnitConverterState&&(identical(other.areaValue, areaValue) || other.areaValue == areaValue)&&(identical(other.areaUnit, areaUnit) || other.areaUnit == areaUnit)&&(identical(other.lengthValue, lengthValue) || other.lengthValue == lengthValue)&&(identical(other.lengthUnit, lengthUnit) || other.lengthUnit == lengthUnit));
}


@override
int get hashCode => Object.hash(runtimeType,areaValue,areaUnit,lengthValue,lengthUnit);

@override
String toString() {
  return 'UnitConverterState(areaValue: $areaValue, areaUnit: $areaUnit, lengthValue: $lengthValue, lengthUnit: $lengthUnit)';
}


}

/// @nodoc
abstract mixin class $UnitConverterStateCopyWith<$Res>  {
  factory $UnitConverterStateCopyWith(UnitConverterState value, $Res Function(UnitConverterState) _then) = _$UnitConverterStateCopyWithImpl;
@useResult
$Res call({
 double? areaValue, AreaUnit areaUnit, double? lengthValue, UnitType lengthUnit
});




}
/// @nodoc
class _$UnitConverterStateCopyWithImpl<$Res>
    implements $UnitConverterStateCopyWith<$Res> {
  _$UnitConverterStateCopyWithImpl(this._self, this._then);

  final UnitConverterState _self;
  final $Res Function(UnitConverterState) _then;

/// Create a copy of UnitConverterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? areaValue = freezed,Object? areaUnit = null,Object? lengthValue = freezed,Object? lengthUnit = null,}) {
  return _then(_self.copyWith(
areaValue: freezed == areaValue ? _self.areaValue : areaValue // ignore: cast_nullable_to_non_nullable
as double?,areaUnit: null == areaUnit ? _self.areaUnit : areaUnit // ignore: cast_nullable_to_non_nullable
as AreaUnit,lengthValue: freezed == lengthValue ? _self.lengthValue : lengthValue // ignore: cast_nullable_to_non_nullable
as double?,lengthUnit: null == lengthUnit ? _self.lengthUnit : lengthUnit // ignore: cast_nullable_to_non_nullable
as UnitType,
  ));
}

}


/// Adds pattern-matching-related methods to [UnitConverterState].
extension UnitConverterStatePatterns on UnitConverterState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UnitConverterState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UnitConverterState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UnitConverterState value)  $default,){
final _that = this;
switch (_that) {
case _UnitConverterState():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UnitConverterState value)?  $default,){
final _that = this;
switch (_that) {
case _UnitConverterState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? areaValue,  AreaUnit areaUnit,  double? lengthValue,  UnitType lengthUnit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UnitConverterState() when $default != null:
return $default(_that.areaValue,_that.areaUnit,_that.lengthValue,_that.lengthUnit);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? areaValue,  AreaUnit areaUnit,  double? lengthValue,  UnitType lengthUnit)  $default,) {final _that = this;
switch (_that) {
case _UnitConverterState():
return $default(_that.areaValue,_that.areaUnit,_that.lengthValue,_that.lengthUnit);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? areaValue,  AreaUnit areaUnit,  double? lengthValue,  UnitType lengthUnit)?  $default,) {final _that = this;
switch (_that) {
case _UnitConverterState() when $default != null:
return $default(_that.areaValue,_that.areaUnit,_that.lengthValue,_that.lengthUnit);case _:
  return null;

}
}

}

/// @nodoc


class _UnitConverterState implements UnitConverterState {
  const _UnitConverterState({this.areaValue, this.areaUnit = AreaUnit.cents, this.lengthValue, this.lengthUnit = UnitType.meters});
  

@override final  double? areaValue;
@override@JsonKey() final  AreaUnit areaUnit;
@override final  double? lengthValue;
@override@JsonKey() final  UnitType lengthUnit;

/// Create a copy of UnitConverterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UnitConverterStateCopyWith<_UnitConverterState> get copyWith => __$UnitConverterStateCopyWithImpl<_UnitConverterState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UnitConverterState&&(identical(other.areaValue, areaValue) || other.areaValue == areaValue)&&(identical(other.areaUnit, areaUnit) || other.areaUnit == areaUnit)&&(identical(other.lengthValue, lengthValue) || other.lengthValue == lengthValue)&&(identical(other.lengthUnit, lengthUnit) || other.lengthUnit == lengthUnit));
}


@override
int get hashCode => Object.hash(runtimeType,areaValue,areaUnit,lengthValue,lengthUnit);

@override
String toString() {
  return 'UnitConverterState(areaValue: $areaValue, areaUnit: $areaUnit, lengthValue: $lengthValue, lengthUnit: $lengthUnit)';
}


}

/// @nodoc
abstract mixin class _$UnitConverterStateCopyWith<$Res> implements $UnitConverterStateCopyWith<$Res> {
  factory _$UnitConverterStateCopyWith(_UnitConverterState value, $Res Function(_UnitConverterState) _then) = __$UnitConverterStateCopyWithImpl;
@override @useResult
$Res call({
 double? areaValue, AreaUnit areaUnit, double? lengthValue, UnitType lengthUnit
});




}
/// @nodoc
class __$UnitConverterStateCopyWithImpl<$Res>
    implements _$UnitConverterStateCopyWith<$Res> {
  __$UnitConverterStateCopyWithImpl(this._self, this._then);

  final _UnitConverterState _self;
  final $Res Function(_UnitConverterState) _then;

/// Create a copy of UnitConverterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? areaValue = freezed,Object? areaUnit = null,Object? lengthValue = freezed,Object? lengthUnit = null,}) {
  return _then(_UnitConverterState(
areaValue: freezed == areaValue ? _self.areaValue : areaValue // ignore: cast_nullable_to_non_nullable
as double?,areaUnit: null == areaUnit ? _self.areaUnit : areaUnit // ignore: cast_nullable_to_non_nullable
as AreaUnit,lengthValue: freezed == lengthValue ? _self.lengthValue : lengthValue // ignore: cast_nullable_to_non_nullable
as double?,lengthUnit: null == lengthUnit ? _self.lengthUnit : lengthUnit // ignore: cast_nullable_to_non_nullable
as UnitType,
  ));
}


}

// dart format on
