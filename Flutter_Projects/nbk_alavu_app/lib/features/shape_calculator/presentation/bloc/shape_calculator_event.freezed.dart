// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shape_calculator_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ShapeCalculatorEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShapeCalculatorEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ShapeCalculatorEvent()';
}


}

/// @nodoc
class $ShapeCalculatorEventCopyWith<$Res>  {
$ShapeCalculatorEventCopyWith(ShapeCalculatorEvent _, $Res Function(ShapeCalculatorEvent) __);
}


/// Adds pattern-matching-related methods to [ShapeCalculatorEvent].
extension ShapeCalculatorEventPatterns on ShapeCalculatorEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AddShape value)?  addShape,TResult Function( DeleteShape value)?  deleteShape,TResult Function( InsertShape value)?  insertShape,TResult Function( ClearAll value)?  clearAll,TResult Function( SetUnit value)?  setUnit,TResult Function( SelectShapeType value)?  selectShapeType,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AddShape() when addShape != null:
return addShape(_that);case DeleteShape() when deleteShape != null:
return deleteShape(_that);case InsertShape() when insertShape != null:
return insertShape(_that);case ClearAll() when clearAll != null:
return clearAll(_that);case SetUnit() when setUnit != null:
return setUnit(_that);case SelectShapeType() when selectShapeType != null:
return selectShapeType(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AddShape value)  addShape,required TResult Function( DeleteShape value)  deleteShape,required TResult Function( InsertShape value)  insertShape,required TResult Function( ClearAll value)  clearAll,required TResult Function( SetUnit value)  setUnit,required TResult Function( SelectShapeType value)  selectShapeType,}){
final _that = this;
switch (_that) {
case AddShape():
return addShape(_that);case DeleteShape():
return deleteShape(_that);case InsertShape():
return insertShape(_that);case ClearAll():
return clearAll(_that);case SetUnit():
return setUnit(_that);case SelectShapeType():
return selectShapeType(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AddShape value)?  addShape,TResult? Function( DeleteShape value)?  deleteShape,TResult? Function( InsertShape value)?  insertShape,TResult? Function( ClearAll value)?  clearAll,TResult? Function( SetUnit value)?  setUnit,TResult? Function( SelectShapeType value)?  selectShapeType,}){
final _that = this;
switch (_that) {
case AddShape() when addShape != null:
return addShape(_that);case DeleteShape() when deleteShape != null:
return deleteShape(_that);case InsertShape() when insertShape != null:
return insertShape(_that);case ClearAll() when clearAll != null:
return clearAll(_that);case SetUnit() when setUnit != null:
return setUnit(_that);case SelectShapeType() when selectShapeType != null:
return selectShapeType(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( Map<String, String> inputs)?  addShape,TResult Function( int index)?  deleteShape,TResult Function( int index,  Shape shape)?  insertShape,TResult Function()?  clearAll,TResult Function( String unit)?  setUnit,TResult Function( ShapeType type)?  selectShapeType,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AddShape() when addShape != null:
return addShape(_that.inputs);case DeleteShape() when deleteShape != null:
return deleteShape(_that.index);case InsertShape() when insertShape != null:
return insertShape(_that.index,_that.shape);case ClearAll() when clearAll != null:
return clearAll();case SetUnit() when setUnit != null:
return setUnit(_that.unit);case SelectShapeType() when selectShapeType != null:
return selectShapeType(_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( Map<String, String> inputs)  addShape,required TResult Function( int index)  deleteShape,required TResult Function( int index,  Shape shape)  insertShape,required TResult Function()  clearAll,required TResult Function( String unit)  setUnit,required TResult Function( ShapeType type)  selectShapeType,}) {final _that = this;
switch (_that) {
case AddShape():
return addShape(_that.inputs);case DeleteShape():
return deleteShape(_that.index);case InsertShape():
return insertShape(_that.index,_that.shape);case ClearAll():
return clearAll();case SetUnit():
return setUnit(_that.unit);case SelectShapeType():
return selectShapeType(_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( Map<String, String> inputs)?  addShape,TResult? Function( int index)?  deleteShape,TResult? Function( int index,  Shape shape)?  insertShape,TResult? Function()?  clearAll,TResult? Function( String unit)?  setUnit,TResult? Function( ShapeType type)?  selectShapeType,}) {final _that = this;
switch (_that) {
case AddShape() when addShape != null:
return addShape(_that.inputs);case DeleteShape() when deleteShape != null:
return deleteShape(_that.index);case InsertShape() when insertShape != null:
return insertShape(_that.index,_that.shape);case ClearAll() when clearAll != null:
return clearAll();case SetUnit() when setUnit != null:
return setUnit(_that.unit);case SelectShapeType() when selectShapeType != null:
return selectShapeType(_that.type);case _:
  return null;

}
}

}

/// @nodoc


class AddShape implements ShapeCalculatorEvent {
  const AddShape({required final  Map<String, String> inputs}): _inputs = inputs;
  

 final  Map<String, String> _inputs;
 Map<String, String> get inputs {
  if (_inputs is EqualUnmodifiableMapView) return _inputs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_inputs);
}


/// Create a copy of ShapeCalculatorEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddShapeCopyWith<AddShape> get copyWith => _$AddShapeCopyWithImpl<AddShape>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddShape&&const DeepCollectionEquality().equals(other._inputs, _inputs));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_inputs));

@override
String toString() {
  return 'ShapeCalculatorEvent.addShape(inputs: $inputs)';
}


}

/// @nodoc
abstract mixin class $AddShapeCopyWith<$Res> implements $ShapeCalculatorEventCopyWith<$Res> {
  factory $AddShapeCopyWith(AddShape value, $Res Function(AddShape) _then) = _$AddShapeCopyWithImpl;
@useResult
$Res call({
 Map<String, String> inputs
});




}
/// @nodoc
class _$AddShapeCopyWithImpl<$Res>
    implements $AddShapeCopyWith<$Res> {
  _$AddShapeCopyWithImpl(this._self, this._then);

  final AddShape _self;
  final $Res Function(AddShape) _then;

/// Create a copy of ShapeCalculatorEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? inputs = null,}) {
  return _then(AddShape(
inputs: null == inputs ? _self._inputs : inputs // ignore: cast_nullable_to_non_nullable
as Map<String, String>,
  ));
}


}

/// @nodoc


class DeleteShape implements ShapeCalculatorEvent {
  const DeleteShape(this.index);
  

 final  int index;

/// Create a copy of ShapeCalculatorEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteShapeCopyWith<DeleteShape> get copyWith => _$DeleteShapeCopyWithImpl<DeleteShape>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteShape&&(identical(other.index, index) || other.index == index));
}


@override
int get hashCode => Object.hash(runtimeType,index);

@override
String toString() {
  return 'ShapeCalculatorEvent.deleteShape(index: $index)';
}


}

/// @nodoc
abstract mixin class $DeleteShapeCopyWith<$Res> implements $ShapeCalculatorEventCopyWith<$Res> {
  factory $DeleteShapeCopyWith(DeleteShape value, $Res Function(DeleteShape) _then) = _$DeleteShapeCopyWithImpl;
@useResult
$Res call({
 int index
});




}
/// @nodoc
class _$DeleteShapeCopyWithImpl<$Res>
    implements $DeleteShapeCopyWith<$Res> {
  _$DeleteShapeCopyWithImpl(this._self, this._then);

  final DeleteShape _self;
  final $Res Function(DeleteShape) _then;

/// Create a copy of ShapeCalculatorEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? index = null,}) {
  return _then(DeleteShape(
null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class InsertShape implements ShapeCalculatorEvent {
  const InsertShape({required this.index, required this.shape});
  

 final  int index;
 final  Shape shape;

/// Create a copy of ShapeCalculatorEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InsertShapeCopyWith<InsertShape> get copyWith => _$InsertShapeCopyWithImpl<InsertShape>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InsertShape&&(identical(other.index, index) || other.index == index)&&(identical(other.shape, shape) || other.shape == shape));
}


@override
int get hashCode => Object.hash(runtimeType,index,shape);

@override
String toString() {
  return 'ShapeCalculatorEvent.insertShape(index: $index, shape: $shape)';
}


}

/// @nodoc
abstract mixin class $InsertShapeCopyWith<$Res> implements $ShapeCalculatorEventCopyWith<$Res> {
  factory $InsertShapeCopyWith(InsertShape value, $Res Function(InsertShape) _then) = _$InsertShapeCopyWithImpl;
@useResult
$Res call({
 int index, Shape shape
});




}
/// @nodoc
class _$InsertShapeCopyWithImpl<$Res>
    implements $InsertShapeCopyWith<$Res> {
  _$InsertShapeCopyWithImpl(this._self, this._then);

  final InsertShape _self;
  final $Res Function(InsertShape) _then;

/// Create a copy of ShapeCalculatorEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? index = null,Object? shape = null,}) {
  return _then(InsertShape(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,shape: null == shape ? _self.shape : shape // ignore: cast_nullable_to_non_nullable
as Shape,
  ));
}


}

/// @nodoc


class ClearAll implements ShapeCalculatorEvent {
  const ClearAll();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClearAll);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ShapeCalculatorEvent.clearAll()';
}


}




/// @nodoc


class SetUnit implements ShapeCalculatorEvent {
  const SetUnit(this.unit);
  

 final  String unit;

/// Create a copy of ShapeCalculatorEvent
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
  return 'ShapeCalculatorEvent.setUnit(unit: $unit)';
}


}

/// @nodoc
abstract mixin class $SetUnitCopyWith<$Res> implements $ShapeCalculatorEventCopyWith<$Res> {
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

/// Create a copy of ShapeCalculatorEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? unit = null,}) {
  return _then(SetUnit(
null == unit ? _self.unit : unit // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SelectShapeType implements ShapeCalculatorEvent {
  const SelectShapeType(this.type);
  

 final  ShapeType type;

/// Create a copy of ShapeCalculatorEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectShapeTypeCopyWith<SelectShapeType> get copyWith => _$SelectShapeTypeCopyWithImpl<SelectShapeType>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectShapeType&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,type);

@override
String toString() {
  return 'ShapeCalculatorEvent.selectShapeType(type: $type)';
}


}

/// @nodoc
abstract mixin class $SelectShapeTypeCopyWith<$Res> implements $ShapeCalculatorEventCopyWith<$Res> {
  factory $SelectShapeTypeCopyWith(SelectShapeType value, $Res Function(SelectShapeType) _then) = _$SelectShapeTypeCopyWithImpl;
@useResult
$Res call({
 ShapeType type
});




}
/// @nodoc
class _$SelectShapeTypeCopyWithImpl<$Res>
    implements $SelectShapeTypeCopyWith<$Res> {
  _$SelectShapeTypeCopyWithImpl(this._self, this._then);

  final SelectShapeType _self;
  final $Res Function(SelectShapeType) _then;

/// Create a copy of ShapeCalculatorEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? type = null,}) {
  return _then(SelectShapeType(
null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ShapeType,
  ));
}


}

// dart format on
