// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'triangle_calculator_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TriangleCalculatorState {

 List<TriangleModel> get triangles; String get selectedUnit; double get totalAreaSqM; TriangleCalculatorStatus get status; String? get errorMessage;
/// Create a copy of TriangleCalculatorState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TriangleCalculatorStateCopyWith<TriangleCalculatorState> get copyWith => _$TriangleCalculatorStateCopyWithImpl<TriangleCalculatorState>(this as TriangleCalculatorState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TriangleCalculatorState&&const DeepCollectionEquality().equals(other.triangles, triangles)&&(identical(other.selectedUnit, selectedUnit) || other.selectedUnit == selectedUnit)&&(identical(other.totalAreaSqM, totalAreaSqM) || other.totalAreaSqM == totalAreaSqM)&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(triangles),selectedUnit,totalAreaSqM,status,errorMessage);

@override
String toString() {
  return 'TriangleCalculatorState(triangles: $triangles, selectedUnit: $selectedUnit, totalAreaSqM: $totalAreaSqM, status: $status, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $TriangleCalculatorStateCopyWith<$Res>  {
  factory $TriangleCalculatorStateCopyWith(TriangleCalculatorState value, $Res Function(TriangleCalculatorState) _then) = _$TriangleCalculatorStateCopyWithImpl;
@useResult
$Res call({
 List<TriangleModel> triangles, String selectedUnit, double totalAreaSqM, TriangleCalculatorStatus status, String? errorMessage
});




}
/// @nodoc
class _$TriangleCalculatorStateCopyWithImpl<$Res>
    implements $TriangleCalculatorStateCopyWith<$Res> {
  _$TriangleCalculatorStateCopyWithImpl(this._self, this._then);

  final TriangleCalculatorState _self;
  final $Res Function(TriangleCalculatorState) _then;

/// Create a copy of TriangleCalculatorState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? triangles = null,Object? selectedUnit = null,Object? totalAreaSqM = null,Object? status = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
triangles: null == triangles ? _self.triangles : triangles // ignore: cast_nullable_to_non_nullable
as List<TriangleModel>,selectedUnit: null == selectedUnit ? _self.selectedUnit : selectedUnit // ignore: cast_nullable_to_non_nullable
as String,totalAreaSqM: null == totalAreaSqM ? _self.totalAreaSqM : totalAreaSqM // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TriangleCalculatorStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TriangleCalculatorState].
extension TriangleCalculatorStatePatterns on TriangleCalculatorState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TriangleCalculatorState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TriangleCalculatorState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TriangleCalculatorState value)  $default,){
final _that = this;
switch (_that) {
case _TriangleCalculatorState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TriangleCalculatorState value)?  $default,){
final _that = this;
switch (_that) {
case _TriangleCalculatorState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<TriangleModel> triangles,  String selectedUnit,  double totalAreaSqM,  TriangleCalculatorStatus status,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TriangleCalculatorState() when $default != null:
return $default(_that.triangles,_that.selectedUnit,_that.totalAreaSqM,_that.status,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<TriangleModel> triangles,  String selectedUnit,  double totalAreaSqM,  TriangleCalculatorStatus status,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _TriangleCalculatorState():
return $default(_that.triangles,_that.selectedUnit,_that.totalAreaSqM,_that.status,_that.errorMessage);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<TriangleModel> triangles,  String selectedUnit,  double totalAreaSqM,  TriangleCalculatorStatus status,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _TriangleCalculatorState() when $default != null:
return $default(_that.triangles,_that.selectedUnit,_that.totalAreaSqM,_that.status,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _TriangleCalculatorState extends TriangleCalculatorState {
  const _TriangleCalculatorState({final  List<TriangleModel> triangles = const [], this.selectedUnit = 'Meters', this.totalAreaSqM = 0.0, this.status = TriangleCalculatorStatus.initial, this.errorMessage}): _triangles = triangles,super._();
  

 final  List<TriangleModel> _triangles;
@override@JsonKey() List<TriangleModel> get triangles {
  if (_triangles is EqualUnmodifiableListView) return _triangles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_triangles);
}

@override@JsonKey() final  String selectedUnit;
@override@JsonKey() final  double totalAreaSqM;
@override@JsonKey() final  TriangleCalculatorStatus status;
@override final  String? errorMessage;

/// Create a copy of TriangleCalculatorState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TriangleCalculatorStateCopyWith<_TriangleCalculatorState> get copyWith => __$TriangleCalculatorStateCopyWithImpl<_TriangleCalculatorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TriangleCalculatorState&&const DeepCollectionEquality().equals(other._triangles, _triangles)&&(identical(other.selectedUnit, selectedUnit) || other.selectedUnit == selectedUnit)&&(identical(other.totalAreaSqM, totalAreaSqM) || other.totalAreaSqM == totalAreaSqM)&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_triangles),selectedUnit,totalAreaSqM,status,errorMessage);

@override
String toString() {
  return 'TriangleCalculatorState(triangles: $triangles, selectedUnit: $selectedUnit, totalAreaSqM: $totalAreaSqM, status: $status, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$TriangleCalculatorStateCopyWith<$Res> implements $TriangleCalculatorStateCopyWith<$Res> {
  factory _$TriangleCalculatorStateCopyWith(_TriangleCalculatorState value, $Res Function(_TriangleCalculatorState) _then) = __$TriangleCalculatorStateCopyWithImpl;
@override @useResult
$Res call({
 List<TriangleModel> triangles, String selectedUnit, double totalAreaSqM, TriangleCalculatorStatus status, String? errorMessage
});




}
/// @nodoc
class __$TriangleCalculatorStateCopyWithImpl<$Res>
    implements _$TriangleCalculatorStateCopyWith<$Res> {
  __$TriangleCalculatorStateCopyWithImpl(this._self, this._then);

  final _TriangleCalculatorState _self;
  final $Res Function(_TriangleCalculatorState) _then;

/// Create a copy of TriangleCalculatorState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? triangles = null,Object? selectedUnit = null,Object? totalAreaSqM = null,Object? status = null,Object? errorMessage = freezed,}) {
  return _then(_TriangleCalculatorState(
triangles: null == triangles ? _self._triangles : triangles // ignore: cast_nullable_to_non_nullable
as List<TriangleModel>,selectedUnit: null == selectedUnit ? _self.selectedUnit : selectedUnit // ignore: cast_nullable_to_non_nullable
as String,totalAreaSqM: null == totalAreaSqM ? _self.totalAreaSqM : totalAreaSqM // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TriangleCalculatorStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
