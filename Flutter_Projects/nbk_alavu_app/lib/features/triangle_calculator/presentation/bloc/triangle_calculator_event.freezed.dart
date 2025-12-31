// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'triangle_calculator_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TriangleCalculatorEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TriangleCalculatorEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TriangleCalculatorEvent()';
}


}

/// @nodoc
class $TriangleCalculatorEventCopyWith<$Res>  {
$TriangleCalculatorEventCopyWith(TriangleCalculatorEvent _, $Res Function(TriangleCalculatorEvent) __);
}


/// Adds pattern-matching-related methods to [TriangleCalculatorEvent].
extension TriangleCalculatorEventPatterns on TriangleCalculatorEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AddTriangle value)?  addTriangle,TResult Function( DeleteTriangle value)?  deleteTriangle,TResult Function( ClearAll value)?  clearAll,TResult Function( SetUnit value)?  setUnit,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AddTriangle() when addTriangle != null:
return addTriangle(_that);case DeleteTriangle() when deleteTriangle != null:
return deleteTriangle(_that);case ClearAll() when clearAll != null:
return clearAll(_that);case SetUnit() when setUnit != null:
return setUnit(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AddTriangle value)  addTriangle,required TResult Function( DeleteTriangle value)  deleteTriangle,required TResult Function( ClearAll value)  clearAll,required TResult Function( SetUnit value)  setUnit,}){
final _that = this;
switch (_that) {
case AddTriangle():
return addTriangle(_that);case DeleteTriangle():
return deleteTriangle(_that);case ClearAll():
return clearAll(_that);case SetUnit():
return setUnit(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AddTriangle value)?  addTriangle,TResult? Function( DeleteTriangle value)?  deleteTriangle,TResult? Function( ClearAll value)?  clearAll,TResult? Function( SetUnit value)?  setUnit,}){
final _that = this;
switch (_that) {
case AddTriangle() when addTriangle != null:
return addTriangle(_that);case DeleteTriangle() when deleteTriangle != null:
return deleteTriangle(_that);case ClearAll() when clearAll != null:
return clearAll(_that);case SetUnit() when setUnit != null:
return setUnit(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String sideA,  String sideB,  String sideC)?  addTriangle,TResult Function( int index)?  deleteTriangle,TResult Function()?  clearAll,TResult Function( String unit)?  setUnit,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AddTriangle() when addTriangle != null:
return addTriangle(_that.sideA,_that.sideB,_that.sideC);case DeleteTriangle() when deleteTriangle != null:
return deleteTriangle(_that.index);case ClearAll() when clearAll != null:
return clearAll();case SetUnit() when setUnit != null:
return setUnit(_that.unit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String sideA,  String sideB,  String sideC)  addTriangle,required TResult Function( int index)  deleteTriangle,required TResult Function()  clearAll,required TResult Function( String unit)  setUnit,}) {final _that = this;
switch (_that) {
case AddTriangle():
return addTriangle(_that.sideA,_that.sideB,_that.sideC);case DeleteTriangle():
return deleteTriangle(_that.index);case ClearAll():
return clearAll();case SetUnit():
return setUnit(_that.unit);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String sideA,  String sideB,  String sideC)?  addTriangle,TResult? Function( int index)?  deleteTriangle,TResult? Function()?  clearAll,TResult? Function( String unit)?  setUnit,}) {final _that = this;
switch (_that) {
case AddTriangle() when addTriangle != null:
return addTriangle(_that.sideA,_that.sideB,_that.sideC);case DeleteTriangle() when deleteTriangle != null:
return deleteTriangle(_that.index);case ClearAll() when clearAll != null:
return clearAll();case SetUnit() when setUnit != null:
return setUnit(_that.unit);case _:
  return null;

}
}

}

/// @nodoc


class AddTriangle implements TriangleCalculatorEvent {
  const AddTriangle({required this.sideA, required this.sideB, required this.sideC});
  

 final  String sideA;
 final  String sideB;
 final  String sideC;

/// Create a copy of TriangleCalculatorEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddTriangleCopyWith<AddTriangle> get copyWith => _$AddTriangleCopyWithImpl<AddTriangle>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddTriangle&&(identical(other.sideA, sideA) || other.sideA == sideA)&&(identical(other.sideB, sideB) || other.sideB == sideB)&&(identical(other.sideC, sideC) || other.sideC == sideC));
}


@override
int get hashCode => Object.hash(runtimeType,sideA,sideB,sideC);

@override
String toString() {
  return 'TriangleCalculatorEvent.addTriangle(sideA: $sideA, sideB: $sideB, sideC: $sideC)';
}


}

/// @nodoc
abstract mixin class $AddTriangleCopyWith<$Res> implements $TriangleCalculatorEventCopyWith<$Res> {
  factory $AddTriangleCopyWith(AddTriangle value, $Res Function(AddTriangle) _then) = _$AddTriangleCopyWithImpl;
@useResult
$Res call({
 String sideA, String sideB, String sideC
});




}
/// @nodoc
class _$AddTriangleCopyWithImpl<$Res>
    implements $AddTriangleCopyWith<$Res> {
  _$AddTriangleCopyWithImpl(this._self, this._then);

  final AddTriangle _self;
  final $Res Function(AddTriangle) _then;

/// Create a copy of TriangleCalculatorEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sideA = null,Object? sideB = null,Object? sideC = null,}) {
  return _then(AddTriangle(
sideA: null == sideA ? _self.sideA : sideA // ignore: cast_nullable_to_non_nullable
as String,sideB: null == sideB ? _self.sideB : sideB // ignore: cast_nullable_to_non_nullable
as String,sideC: null == sideC ? _self.sideC : sideC // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class DeleteTriangle implements TriangleCalculatorEvent {
  const DeleteTriangle(this.index);
  

 final  int index;

/// Create a copy of TriangleCalculatorEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteTriangleCopyWith<DeleteTriangle> get copyWith => _$DeleteTriangleCopyWithImpl<DeleteTriangle>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteTriangle&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,index);

@override
String toString() {
  return 'TriangleCalculatorEvent.deleteTriangle(index: $index)';
}


}

/// @nodoc
abstract mixin class $DeleteTriangleCopyWith<$Res> implements $TriangleCalculatorEventCopyWith<$Res> {
  factory $DeleteTriangleCopyWith(DeleteTriangle value, $Res Function(DeleteTriangle) _then) = _$DeleteTriangleCopyWithImpl;
@useResult
$Res call({
 int index
});




}
/// @nodoc
class _$DeleteTriangleCopyWithImpl<$Res>
    implements $DeleteTriangleCopyWith<$Res> {
  _$DeleteTriangleCopyWithImpl(this._self, this._then);

  final DeleteTriangle _self;
  final $Res Function(DeleteTriangle) _then;

/// Create a copy of TriangleCalculatorEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? index = null,}) {
  return _then(DeleteTriangle(
null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class ClearAll implements TriangleCalculatorEvent {
  const ClearAll();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClearAll);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TriangleCalculatorEvent.clearAll()';
}


}




/// @nodoc


class SetUnit implements TriangleCalculatorEvent {
  const SetUnit(this.unit);
  

 final  String unit;

/// Create a copy of TriangleCalculatorEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetUnitCopyWith<SetUnit> get copyWith => _$SetUnitCopyWithImpl<SetUnit>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetUnit&&(identical(other.unit, unit) || other.unit == unit));
}


@override
int get hashCode => Object.hash(runtimeType,unit);

@override
String toString() {
  return 'TriangleCalculatorEvent.setUnit(unit: $unit)';
}


}

/// @nodoc
abstract mixin class $SetUnitCopyWith<$Res> implements $TriangleCalculatorEventCopyWith<$Res> {
  factory $SetUnitCopyWith(SetUnit value, $Res Function(SetUnit) _then) = _$SetUnitCopyWithImpl;
@useResult
$Res call({
 String unit
});




}
/// @nodoc
class _$SetUnitCopyWithImpl<$Res>
    implements $SetUnitCopyWith<$Res> {
  _$SetUnitCopyWithImpl(this._self, this._then);

  final SetUnit _self;
  final $Res Function(SetUnit) _then;

/// Create a copy of TriangleCalculatorEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? unit = null,}) {
  return _then(SetUnit(
null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
