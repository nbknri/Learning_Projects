// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unit_converter_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UnitConverterEvent {

 double? get value; Enum get fromUnit;
/// Create a copy of UnitConverterEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnitConverterEventCopyWith<UnitConverterEvent> get copyWith => _$UnitConverterEventCopyWithImpl<UnitConverterEvent>(this as UnitConverterEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnitConverterEvent&&(identical(other.value, value) || other.value == value)&&(identical(other.fromUnit, fromUnit) || other.fromUnit == fromUnit));
}


@override
int get hashCode => Object.hash(runtimeType,value,fromUnit);

@override
String toString() {
  return 'UnitConverterEvent(value: $value, fromUnit: $fromUnit)';
}


}

/// @nodoc
abstract mixin class $UnitConverterEventCopyWith<$Res>  {
  factory $UnitConverterEventCopyWith(UnitConverterEvent value, $Res Function(UnitConverterEvent) _then) = _$UnitConverterEventCopyWithImpl;
@useResult
$Res call({
 double? value
});




}
/// @nodoc
class _$UnitConverterEventCopyWithImpl<$Res>
    implements $UnitConverterEventCopyWith<$Res> {
  _$UnitConverterEventCopyWithImpl(this._self, this._then);

  final UnitConverterEvent _self;
  final $Res Function(UnitConverterEvent) _then;

/// Create a copy of UnitConverterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = freezed,}) {
  return _then(_self.copyWith(
value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [UnitConverterEvent].
extension UnitConverterEventPatterns on UnitConverterEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UpdateAreaInput value)?  updateAreaInput,TResult Function( UpdateLengthInput value)?  updateLengthInput,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UpdateAreaInput() when updateAreaInput != null:
return updateAreaInput(_that);case UpdateLengthInput() when updateLengthInput != null:
return updateLengthInput(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UpdateAreaInput value)  updateAreaInput,required TResult Function( UpdateLengthInput value)  updateLengthInput,}){
final _that = this;
switch (_that) {
case UpdateAreaInput():
return updateAreaInput(_that);case UpdateLengthInput():
return updateLengthInput(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UpdateAreaInput value)?  updateAreaInput,TResult? Function( UpdateLengthInput value)?  updateLengthInput,}){
final _that = this;
switch (_that) {
case UpdateAreaInput() when updateAreaInput != null:
return updateAreaInput(_that);case UpdateLengthInput() when updateLengthInput != null:
return updateLengthInput(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( double? value,  AreaUnit fromUnit)?  updateAreaInput,TResult Function( double? value,  UnitType fromUnit)?  updateLengthInput,required TResult orElse(),}) {final _that = this;
switch (_that) {
case UpdateAreaInput() when updateAreaInput != null:
return updateAreaInput(_that.value,_that.fromUnit);case UpdateLengthInput() when updateLengthInput != null:
return updateLengthInput(_that.value,_that.fromUnit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( double? value,  AreaUnit fromUnit)  updateAreaInput,required TResult Function( double? value,  UnitType fromUnit)  updateLengthInput,}) {final _that = this;
switch (_that) {
case UpdateAreaInput():
return updateAreaInput(_that.value,_that.fromUnit);case UpdateLengthInput():
return updateLengthInput(_that.value,_that.fromUnit);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( double? value,  AreaUnit fromUnit)?  updateAreaInput,TResult? Function( double? value,  UnitType fromUnit)?  updateLengthInput,}) {final _that = this;
switch (_that) {
case UpdateAreaInput() when updateAreaInput != null:
return updateAreaInput(_that.value,_that.fromUnit);case UpdateLengthInput() when updateLengthInput != null:
return updateLengthInput(_that.value,_that.fromUnit);case _:
  return null;

}
}

}

/// @nodoc


class UpdateAreaInput implements UnitConverterEvent {
  const UpdateAreaInput({this.value, required this.fromUnit});
  

@override final  double? value;
@override final  AreaUnit fromUnit;

/// Create a copy of UnitConverterEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateAreaInputCopyWith<UpdateAreaInput> get copyWith => _$UpdateAreaInputCopyWithImpl<UpdateAreaInput>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateAreaInput&&(identical(other.value, value) || other.value == value)&&(identical(other.fromUnit, fromUnit) || other.fromUnit == fromUnit));
}


@override
int get hashCode => Object.hash(runtimeType,value,fromUnit);

@override
String toString() {
  return 'UnitConverterEvent.updateAreaInput(value: $value, fromUnit: $fromUnit)';
}


}

/// @nodoc
abstract mixin class $UpdateAreaInputCopyWith<$Res> implements $UnitConverterEventCopyWith<$Res> {
  factory $UpdateAreaInputCopyWith(UpdateAreaInput value, $Res Function(UpdateAreaInput) _then) = _$UpdateAreaInputCopyWithImpl;
@override @useResult
$Res call({
 double? value, AreaUnit fromUnit
});




}
/// @nodoc
class _$UpdateAreaInputCopyWithImpl<$Res>
    implements $UpdateAreaInputCopyWith<$Res> {
  _$UpdateAreaInputCopyWithImpl(this._self, this._then);

  final UpdateAreaInput _self;
  final $Res Function(UpdateAreaInput) _then;

/// Create a copy of UnitConverterEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = freezed,Object? fromUnit = null,}) {
  return _then(UpdateAreaInput(
value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double?,fromUnit: null == fromUnit ? _self.fromUnit : fromUnit // ignore: cast_nullable_to_non_nullable
as AreaUnit,
  ));
}


}

/// @nodoc


class UpdateLengthInput implements UnitConverterEvent {
  const UpdateLengthInput({this.value, required this.fromUnit});
  

@override final  double? value;
@override final  UnitType fromUnit;

/// Create a copy of UnitConverterEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateLengthInputCopyWith<UpdateLengthInput> get copyWith => _$UpdateLengthInputCopyWithImpl<UpdateLengthInput>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateLengthInput&&(identical(other.value, value) || other.value == value)&&(identical(other.fromUnit, fromUnit) || other.fromUnit == fromUnit));
}


@override
int get hashCode => Object.hash(runtimeType,value,fromUnit);

@override
String toString() {
  return 'UnitConverterEvent.updateLengthInput(value: $value, fromUnit: $fromUnit)';
}


}

/// @nodoc
abstract mixin class $UpdateLengthInputCopyWith<$Res> implements $UnitConverterEventCopyWith<$Res> {
  factory $UpdateLengthInputCopyWith(UpdateLengthInput value, $Res Function(UpdateLengthInput) _then) = _$UpdateLengthInputCopyWithImpl;
@override @useResult
$Res call({
 double? value, UnitType fromUnit
});




}
/// @nodoc
class _$UpdateLengthInputCopyWithImpl<$Res>
    implements $UpdateLengthInputCopyWith<$Res> {
  _$UpdateLengthInputCopyWithImpl(this._self, this._then);

  final UpdateLengthInput _self;
  final $Res Function(UpdateLengthInput) _then;

/// Create a copy of UnitConverterEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = freezed,Object? fromUnit = null,}) {
  return _then(UpdateLengthInput(
value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double?,fromUnit: null == fromUnit ? _self.fromUnit : fromUnit // ignore: cast_nullable_to_non_nullable
as UnitType,
  ));
}


}

// dart format on
