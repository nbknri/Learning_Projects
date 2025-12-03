// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_and_hot_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NewAndHotEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NewAndHotEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NewAndHotEvent()';
}


}

/// @nodoc
class $NewAndHotEventCopyWith<$Res>  {
$NewAndHotEventCopyWith(NewAndHotEvent _, $Res Function(NewAndHotEvent) __);
}


/// Adds pattern-matching-related methods to [NewAndHotEvent].
extension NewAndHotEventPatterns on NewAndHotEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ComingSoonInitialize value)?  comingSoonInitialize,TResult Function( ComingSoonLoadNextPage value)?  comingSoonLoadNextPage,TResult Function( EveryonesInitialize value)?  everyonesInitialize,TResult Function( EveryonesLoadNextPage value)?  everyonesLoadNextPage,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ComingSoonInitialize() when comingSoonInitialize != null:
return comingSoonInitialize(_that);case ComingSoonLoadNextPage() when comingSoonLoadNextPage != null:
return comingSoonLoadNextPage(_that);case EveryonesInitialize() when everyonesInitialize != null:
return everyonesInitialize(_that);case EveryonesLoadNextPage() when everyonesLoadNextPage != null:
return everyonesLoadNextPage(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ComingSoonInitialize value)  comingSoonInitialize,required TResult Function( ComingSoonLoadNextPage value)  comingSoonLoadNextPage,required TResult Function( EveryonesInitialize value)  everyonesInitialize,required TResult Function( EveryonesLoadNextPage value)  everyonesLoadNextPage,}){
final _that = this;
switch (_that) {
case ComingSoonInitialize():
return comingSoonInitialize(_that);case ComingSoonLoadNextPage():
return comingSoonLoadNextPage(_that);case EveryonesInitialize():
return everyonesInitialize(_that);case EveryonesLoadNextPage():
return everyonesLoadNextPage(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ComingSoonInitialize value)?  comingSoonInitialize,TResult? Function( ComingSoonLoadNextPage value)?  comingSoonLoadNextPage,TResult? Function( EveryonesInitialize value)?  everyonesInitialize,TResult? Function( EveryonesLoadNextPage value)?  everyonesLoadNextPage,}){
final _that = this;
switch (_that) {
case ComingSoonInitialize() when comingSoonInitialize != null:
return comingSoonInitialize(_that);case ComingSoonLoadNextPage() when comingSoonLoadNextPage != null:
return comingSoonLoadNextPage(_that);case EveryonesInitialize() when everyonesInitialize != null:
return everyonesInitialize(_that);case EveryonesLoadNextPage() when everyonesLoadNextPage != null:
return everyonesLoadNextPage(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  comingSoonInitialize,TResult Function()?  comingSoonLoadNextPage,TResult Function()?  everyonesInitialize,TResult Function()?  everyonesLoadNextPage,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ComingSoonInitialize() when comingSoonInitialize != null:
return comingSoonInitialize();case ComingSoonLoadNextPage() when comingSoonLoadNextPage != null:
return comingSoonLoadNextPage();case EveryonesInitialize() when everyonesInitialize != null:
return everyonesInitialize();case EveryonesLoadNextPage() when everyonesLoadNextPage != null:
return everyonesLoadNextPage();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  comingSoonInitialize,required TResult Function()  comingSoonLoadNextPage,required TResult Function()  everyonesInitialize,required TResult Function()  everyonesLoadNextPage,}) {final _that = this;
switch (_that) {
case ComingSoonInitialize():
return comingSoonInitialize();case ComingSoonLoadNextPage():
return comingSoonLoadNextPage();case EveryonesInitialize():
return everyonesInitialize();case EveryonesLoadNextPage():
return everyonesLoadNextPage();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  comingSoonInitialize,TResult? Function()?  comingSoonLoadNextPage,TResult? Function()?  everyonesInitialize,TResult? Function()?  everyonesLoadNextPage,}) {final _that = this;
switch (_that) {
case ComingSoonInitialize() when comingSoonInitialize != null:
return comingSoonInitialize();case ComingSoonLoadNextPage() when comingSoonLoadNextPage != null:
return comingSoonLoadNextPage();case EveryonesInitialize() when everyonesInitialize != null:
return everyonesInitialize();case EveryonesLoadNextPage() when everyonesLoadNextPage != null:
return everyonesLoadNextPage();case _:
  return null;

}
}

}

/// @nodoc


class ComingSoonInitialize implements NewAndHotEvent {
  const ComingSoonInitialize();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ComingSoonInitialize);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NewAndHotEvent.comingSoonInitialize()';
}


}




/// @nodoc


class ComingSoonLoadNextPage implements NewAndHotEvent {
  const ComingSoonLoadNextPage();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ComingSoonLoadNextPage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NewAndHotEvent.comingSoonLoadNextPage()';
}


}




/// @nodoc


class EveryonesInitialize implements NewAndHotEvent {
  const EveryonesInitialize();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EveryonesInitialize);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NewAndHotEvent.everyonesInitialize()';
}


}




/// @nodoc


class EveryonesLoadNextPage implements NewAndHotEvent {
  const EveryonesLoadNextPage();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EveryonesLoadNextPage);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'NewAndHotEvent.everyonesLoadNextPage()';
}


}




/// @nodoc
mixin _$NewAndHotState {

 List<NewAndHotResultData> get comingSoonResultList; List<NewAndHotResultData> get evryonesResultList; bool get isLoading; bool get isError; int get totalPages;
/// Create a copy of NewAndHotState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NewAndHotStateCopyWith<NewAndHotState> get copyWith => _$NewAndHotStateCopyWithImpl<NewAndHotState>(this as NewAndHotState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NewAndHotState&&const DeepCollectionEquality().equals(other.comingSoonResultList, comingSoonResultList)&&const DeepCollectionEquality().equals(other.evryonesResultList, evryonesResultList)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(comingSoonResultList),const DeepCollectionEquality().hash(evryonesResultList),isLoading,isError,totalPages);

@override
String toString() {
  return 'NewAndHotState(comingSoonResultList: $comingSoonResultList, evryonesResultList: $evryonesResultList, isLoading: $isLoading, isError: $isError, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class $NewAndHotStateCopyWith<$Res>  {
  factory $NewAndHotStateCopyWith(NewAndHotState value, $Res Function(NewAndHotState) _then) = _$NewAndHotStateCopyWithImpl;
@useResult
$Res call({
 List<NewAndHotResultData> comingSoonResultList, List<NewAndHotResultData> evryonesResultList, bool isLoading, bool isError, int totalPages
});




}
/// @nodoc
class _$NewAndHotStateCopyWithImpl<$Res>
    implements $NewAndHotStateCopyWith<$Res> {
  _$NewAndHotStateCopyWithImpl(this._self, this._then);

  final NewAndHotState _self;
  final $Res Function(NewAndHotState) _then;

/// Create a copy of NewAndHotState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? comingSoonResultList = null,Object? evryonesResultList = null,Object? isLoading = null,Object? isError = null,Object? totalPages = null,}) {
  return _then(_self.copyWith(
comingSoonResultList: null == comingSoonResultList ? _self.comingSoonResultList : comingSoonResultList // ignore: cast_nullable_to_non_nullable
as List<NewAndHotResultData>,evryonesResultList: null == evryonesResultList ? _self.evryonesResultList : evryonesResultList // ignore: cast_nullable_to_non_nullable
as List<NewAndHotResultData>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [NewAndHotState].
extension NewAndHotStatePatterns on NewAndHotState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NewAndHotState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NewAndHotState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NewAndHotState value)  $default,){
final _that = this;
switch (_that) {
case _NewAndHotState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NewAndHotState value)?  $default,){
final _that = this;
switch (_that) {
case _NewAndHotState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<NewAndHotResultData> comingSoonResultList,  List<NewAndHotResultData> evryonesResultList,  bool isLoading,  bool isError,  int totalPages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NewAndHotState() when $default != null:
return $default(_that.comingSoonResultList,_that.evryonesResultList,_that.isLoading,_that.isError,_that.totalPages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<NewAndHotResultData> comingSoonResultList,  List<NewAndHotResultData> evryonesResultList,  bool isLoading,  bool isError,  int totalPages)  $default,) {final _that = this;
switch (_that) {
case _NewAndHotState():
return $default(_that.comingSoonResultList,_that.evryonesResultList,_that.isLoading,_that.isError,_that.totalPages);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<NewAndHotResultData> comingSoonResultList,  List<NewAndHotResultData> evryonesResultList,  bool isLoading,  bool isError,  int totalPages)?  $default,) {final _that = this;
switch (_that) {
case _NewAndHotState() when $default != null:
return $default(_that.comingSoonResultList,_that.evryonesResultList,_that.isLoading,_that.isError,_that.totalPages);case _:
  return null;

}
}

}

/// @nodoc


class _NewAndHotState implements NewAndHotState {
  const _NewAndHotState({required final  List<NewAndHotResultData> comingSoonResultList, required final  List<NewAndHotResultData> evryonesResultList, required this.isLoading, required this.isError, required this.totalPages}): _comingSoonResultList = comingSoonResultList,_evryonesResultList = evryonesResultList;
  

 final  List<NewAndHotResultData> _comingSoonResultList;
@override List<NewAndHotResultData> get comingSoonResultList {
  if (_comingSoonResultList is EqualUnmodifiableListView) return _comingSoonResultList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_comingSoonResultList);
}

 final  List<NewAndHotResultData> _evryonesResultList;
@override List<NewAndHotResultData> get evryonesResultList {
  if (_evryonesResultList is EqualUnmodifiableListView) return _evryonesResultList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_evryonesResultList);
}

@override final  bool isLoading;
@override final  bool isError;
@override final  int totalPages;

/// Create a copy of NewAndHotState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NewAndHotStateCopyWith<_NewAndHotState> get copyWith => __$NewAndHotStateCopyWithImpl<_NewAndHotState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NewAndHotState&&const DeepCollectionEquality().equals(other._comingSoonResultList, _comingSoonResultList)&&const DeepCollectionEquality().equals(other._evryonesResultList, _evryonesResultList)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_comingSoonResultList),const DeepCollectionEquality().hash(_evryonesResultList),isLoading,isError,totalPages);

@override
String toString() {
  return 'NewAndHotState(comingSoonResultList: $comingSoonResultList, evryonesResultList: $evryonesResultList, isLoading: $isLoading, isError: $isError, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class _$NewAndHotStateCopyWith<$Res> implements $NewAndHotStateCopyWith<$Res> {
  factory _$NewAndHotStateCopyWith(_NewAndHotState value, $Res Function(_NewAndHotState) _then) = __$NewAndHotStateCopyWithImpl;
@override @useResult
$Res call({
 List<NewAndHotResultData> comingSoonResultList, List<NewAndHotResultData> evryonesResultList, bool isLoading, bool isError, int totalPages
});




}
/// @nodoc
class __$NewAndHotStateCopyWithImpl<$Res>
    implements _$NewAndHotStateCopyWith<$Res> {
  __$NewAndHotStateCopyWithImpl(this._self, this._then);

  final _NewAndHotState _self;
  final $Res Function(_NewAndHotState) _then;

/// Create a copy of NewAndHotState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? comingSoonResultList = null,Object? evryonesResultList = null,Object? isLoading = null,Object? isError = null,Object? totalPages = null,}) {
  return _then(_NewAndHotState(
comingSoonResultList: null == comingSoonResultList ? _self._comingSoonResultList : comingSoonResultList // ignore: cast_nullable_to_non_nullable
as List<NewAndHotResultData>,evryonesResultList: null == evryonesResultList ? _self._evryonesResultList : evryonesResultList // ignore: cast_nullable_to_non_nullable
as List<NewAndHotResultData>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
