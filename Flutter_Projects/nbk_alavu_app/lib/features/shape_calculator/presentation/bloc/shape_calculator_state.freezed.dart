// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shape_calculator_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ShapeCalculatorState {

 List<Shape> get shapes; String get selectedUnit; ShapeType get selectedShapeType; double get totalAreaSqM; ShapeCalculatorStatus get status; String? get errorMessage; int? get editingIndex; Shape? get pendingEditShape;
/// Create a copy of ShapeCalculatorState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ShapeCalculatorStateCopyWith<ShapeCalculatorState> get copyWith => _$ShapeCalculatorStateCopyWithImpl<ShapeCalculatorState>(this as ShapeCalculatorState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShapeCalculatorState&&const DeepCollectionEquality().equals(other.shapes, shapes)&&(identical(other.selectedUnit, selectedUnit) || other.selectedUnit == selectedUnit)&&(identical(other.selectedShapeType, selectedShapeType) || other.selectedShapeType == selectedShapeType)&&(identical(other.totalAreaSqM, totalAreaSqM) || other.totalAreaSqM == totalAreaSqM)&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.editingIndex, editingIndex) || other.editingIndex == editingIndex)&&(identical(other.pendingEditShape, pendingEditShape) || other.pendingEditShape == pendingEditShape));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(shapes),selectedUnit,selectedShapeType,totalAreaSqM,status,errorMessage,editingIndex,pendingEditShape);

@override
String toString() {
  return 'ShapeCalculatorState(shapes: $shapes, selectedUnit: $selectedUnit, selectedShapeType: $selectedShapeType, totalAreaSqM: $totalAreaSqM, status: $status, errorMessage: $errorMessage, editingIndex: $editingIndex, pendingEditShape: $pendingEditShape)';
}


}

/// @nodoc
abstract mixin class $ShapeCalculatorStateCopyWith<$Res>  {
  factory $ShapeCalculatorStateCopyWith(ShapeCalculatorState value, $Res Function(ShapeCalculatorState) _then) = _$ShapeCalculatorStateCopyWithImpl;
@useResult
$Res call({
 List<Shape> shapes, String selectedUnit, ShapeType selectedShapeType, double totalAreaSqM, ShapeCalculatorStatus status, String? errorMessage, int? editingIndex, Shape? pendingEditShape
});




}
/// @nodoc
class _$ShapeCalculatorStateCopyWithImpl<$Res>
    implements $ShapeCalculatorStateCopyWith<$Res> {
  _$ShapeCalculatorStateCopyWithImpl(this._self, this._then);

  final ShapeCalculatorState _self;
  final $Res Function(ShapeCalculatorState) _then;

/// Create a copy of ShapeCalculatorState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? shapes = null,Object? selectedUnit = null,Object? selectedShapeType = null,Object? totalAreaSqM = null,Object? status = null,Object? errorMessage = freezed,Object? editingIndex = freezed,Object? pendingEditShape = freezed,}) {
  return _then(_self.copyWith(
shapes: null == shapes ? _self.shapes : shapes // ignore: cast_nullable_to_non_nullable
as List<Shape>,selectedUnit: null == selectedUnit ? _self.selectedUnit : selectedUnit // ignore: cast_nullable_to_non_nullable
as String,selectedShapeType: null == selectedShapeType ? _self.selectedShapeType : selectedShapeType // ignore: cast_nullable_to_non_nullable
as ShapeType,totalAreaSqM: null == totalAreaSqM ? _self.totalAreaSqM : totalAreaSqM // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ShapeCalculatorStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,editingIndex: freezed == editingIndex ? _self.editingIndex : editingIndex // ignore: cast_nullable_to_non_nullable
as int?,pendingEditShape: freezed == pendingEditShape ? _self.pendingEditShape : pendingEditShape // ignore: cast_nullable_to_non_nullable
as Shape?,
  ));
}

}


/// Adds pattern-matching-related methods to [ShapeCalculatorState].
extension ShapeCalculatorStatePatterns on ShapeCalculatorState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ShapeCalculatorState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ShapeCalculatorState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ShapeCalculatorState value)  $default,){
final _that = this;
switch (_that) {
case _ShapeCalculatorState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ShapeCalculatorState value)?  $default,){
final _that = this;
switch (_that) {
case _ShapeCalculatorState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Shape> shapes,  String selectedUnit,  ShapeType selectedShapeType,  double totalAreaSqM,  ShapeCalculatorStatus status,  String? errorMessage,  int? editingIndex,  Shape? pendingEditShape)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ShapeCalculatorState() when $default != null:
return $default(_that.shapes,_that.selectedUnit,_that.selectedShapeType,_that.totalAreaSqM,_that.status,_that.errorMessage,_that.editingIndex,_that.pendingEditShape);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Shape> shapes,  String selectedUnit,  ShapeType selectedShapeType,  double totalAreaSqM,  ShapeCalculatorStatus status,  String? errorMessage,  int? editingIndex,  Shape? pendingEditShape)  $default,) {final _that = this;
switch (_that) {
case _ShapeCalculatorState():
return $default(_that.shapes,_that.selectedUnit,_that.selectedShapeType,_that.totalAreaSqM,_that.status,_that.errorMessage,_that.editingIndex,_that.pendingEditShape);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Shape> shapes,  String selectedUnit,  ShapeType selectedShapeType,  double totalAreaSqM,  ShapeCalculatorStatus status,  String? errorMessage,  int? editingIndex,  Shape? pendingEditShape)?  $default,) {final _that = this;
switch (_that) {
case _ShapeCalculatorState() when $default != null:
return $default(_that.shapes,_that.selectedUnit,_that.selectedShapeType,_that.totalAreaSqM,_that.status,_that.errorMessage,_that.editingIndex,_that.pendingEditShape);case _:
  return null;

}
}

}

/// @nodoc


class _ShapeCalculatorState extends ShapeCalculatorState {
  const _ShapeCalculatorState({final  List<Shape> shapes = const [], this.selectedUnit = 'Meters', this.selectedShapeType = ShapeType.triangle, this.totalAreaSqM = 0.0, this.status = ShapeCalculatorStatus.initial, this.errorMessage, this.editingIndex, this.pendingEditShape}): _shapes = shapes,super._();
  

 final  List<Shape> _shapes;
@override@JsonKey() List<Shape> get shapes {
  if (_shapes is EqualUnmodifiableListView) return _shapes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_shapes);
}

@override@JsonKey() final  String selectedUnit;
@override@JsonKey() final  ShapeType selectedShapeType;
@override@JsonKey() final  double totalAreaSqM;
@override@JsonKey() final  ShapeCalculatorStatus status;
@override final  String? errorMessage;
@override final  int? editingIndex;
@override final  Shape? pendingEditShape;

/// Create a copy of ShapeCalculatorState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ShapeCalculatorStateCopyWith<_ShapeCalculatorState> get copyWith => __$ShapeCalculatorStateCopyWithImpl<_ShapeCalculatorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShapeCalculatorState&&const DeepCollectionEquality().equals(other._shapes, _shapes)&&(identical(other.selectedUnit, selectedUnit) || other.selectedUnit == selectedUnit)&&(identical(other.selectedShapeType, selectedShapeType) || other.selectedShapeType == selectedShapeType)&&(identical(other.totalAreaSqM, totalAreaSqM) || other.totalAreaSqM == totalAreaSqM)&&(identical(other.status, status) || other.status == status)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.editingIndex, editingIndex) || other.editingIndex == editingIndex)&&(identical(other.pendingEditShape, pendingEditShape) || other.pendingEditShape == pendingEditShape));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_shapes),selectedUnit,selectedShapeType,totalAreaSqM,status,errorMessage,editingIndex,pendingEditShape);

@override
String toString() {
  return 'ShapeCalculatorState(shapes: $shapes, selectedUnit: $selectedUnit, selectedShapeType: $selectedShapeType, totalAreaSqM: $totalAreaSqM, status: $status, errorMessage: $errorMessage, editingIndex: $editingIndex, pendingEditShape: $pendingEditShape)';
}


}

/// @nodoc
abstract mixin class _$ShapeCalculatorStateCopyWith<$Res> implements $ShapeCalculatorStateCopyWith<$Res> {
  factory _$ShapeCalculatorStateCopyWith(_ShapeCalculatorState value, $Res Function(_ShapeCalculatorState) _then) = __$ShapeCalculatorStateCopyWithImpl;
@override @useResult
$Res call({
 List<Shape> shapes, String selectedUnit, ShapeType selectedShapeType, double totalAreaSqM, ShapeCalculatorStatus status, String? errorMessage, int? editingIndex, Shape? pendingEditShape
});




}
/// @nodoc
class __$ShapeCalculatorStateCopyWithImpl<$Res>
    implements _$ShapeCalculatorStateCopyWith<$Res> {
  __$ShapeCalculatorStateCopyWithImpl(this._self, this._then);

  final _ShapeCalculatorState _self;
  final $Res Function(_ShapeCalculatorState) _then;

/// Create a copy of ShapeCalculatorState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? shapes = null,Object? selectedUnit = null,Object? selectedShapeType = null,Object? totalAreaSqM = null,Object? status = null,Object? errorMessage = freezed,Object? editingIndex = freezed,Object? pendingEditShape = freezed,}) {
  return _then(_ShapeCalculatorState(
shapes: null == shapes ? _self._shapes : shapes // ignore: cast_nullable_to_non_nullable
as List<Shape>,selectedUnit: null == selectedUnit ? _self.selectedUnit : selectedUnit // ignore: cast_nullable_to_non_nullable
as String,selectedShapeType: null == selectedShapeType ? _self.selectedShapeType : selectedShapeType // ignore: cast_nullable_to_non_nullable
as ShapeType,totalAreaSqM: null == totalAreaSqM ? _self.totalAreaSqM : totalAreaSqM // ignore: cast_nullable_to_non_nullable
as double,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ShapeCalculatorStatus,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,editingIndex: freezed == editingIndex ? _self.editingIndex : editingIndex // ignore: cast_nullable_to_non_nullable
as int?,pendingEditShape: freezed == pendingEditShape ? _self.pendingEditShape : pendingEditShape // ignore: cast_nullable_to_non_nullable
as Shape?,
  ));
}


}

// dart format on
