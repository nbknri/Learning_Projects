// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'downloads_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DownloadsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DownloadsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DownloadsEvent()';
}


}

/// @nodoc
class $DownloadsEventCopyWith<$Res>  {
$DownloadsEventCopyWith(DownloadsEvent _, $Res Function(DownloadsEvent) __);
}


/// Adds pattern-matching-related methods to [DownloadsEvent].
extension DownloadsEventPatterns on DownloadsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetDownloadsImages value)?  getDownloadsImages,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetDownloadsImages() when getDownloadsImages != null:
return getDownloadsImages(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetDownloadsImages value)  getDownloadsImages,}){
final _that = this;
switch (_that) {
case GetDownloadsImages():
return getDownloadsImages(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetDownloadsImages value)?  getDownloadsImages,}){
final _that = this;
switch (_that) {
case GetDownloadsImages() when getDownloadsImages != null:
return getDownloadsImages(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getDownloadsImages,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetDownloadsImages() when getDownloadsImages != null:
return getDownloadsImages();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getDownloadsImages,}) {final _that = this;
switch (_that) {
case GetDownloadsImages():
return getDownloadsImages();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getDownloadsImages,}) {final _that = this;
switch (_that) {
case GetDownloadsImages() when getDownloadsImages != null:
return getDownloadsImages();case _:
  return null;

}
}

}

/// @nodoc


class GetDownloadsImages implements DownloadsEvent {
  const GetDownloadsImages();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetDownloadsImages);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DownloadsEvent.getDownloadsImages()';
}


}




/// @nodoc
mixin _$DownloadsState {

 List<DownloadsResultData> get downloadsResultList; bool get isLoading; bool get isError;
/// Create a copy of DownloadsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DownloadsStateCopyWith<DownloadsState> get copyWith => _$DownloadsStateCopyWithImpl<DownloadsState>(this as DownloadsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DownloadsState&&const DeepCollectionEquality().equals(other.downloadsResultList, downloadsResultList)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(downloadsResultList),isLoading,isError);

@override
String toString() {
  return 'DownloadsState(downloadsResultList: $downloadsResultList, isLoading: $isLoading, isError: $isError)';
}


}

/// @nodoc
abstract mixin class $DownloadsStateCopyWith<$Res>  {
  factory $DownloadsStateCopyWith(DownloadsState value, $Res Function(DownloadsState) _then) = _$DownloadsStateCopyWithImpl;
@useResult
$Res call({
 List<DownloadsResultData> downloadsResultList, bool isLoading, bool isError
});




}
/// @nodoc
class _$DownloadsStateCopyWithImpl<$Res>
    implements $DownloadsStateCopyWith<$Res> {
  _$DownloadsStateCopyWithImpl(this._self, this._then);

  final DownloadsState _self;
  final $Res Function(DownloadsState) _then;

/// Create a copy of DownloadsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? downloadsResultList = null,Object? isLoading = null,Object? isError = null,}) {
  return _then(_self.copyWith(
downloadsResultList: null == downloadsResultList ? _self.downloadsResultList : downloadsResultList // ignore: cast_nullable_to_non_nullable
as List<DownloadsResultData>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [DownloadsState].
extension DownloadsStatePatterns on DownloadsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DownloadsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DownloadsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DownloadsState value)  $default,){
final _that = this;
switch (_that) {
case _DownloadsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DownloadsState value)?  $default,){
final _that = this;
switch (_that) {
case _DownloadsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<DownloadsResultData> downloadsResultList,  bool isLoading,  bool isError)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DownloadsState() when $default != null:
return $default(_that.downloadsResultList,_that.isLoading,_that.isError);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<DownloadsResultData> downloadsResultList,  bool isLoading,  bool isError)  $default,) {final _that = this;
switch (_that) {
case _DownloadsState():
return $default(_that.downloadsResultList,_that.isLoading,_that.isError);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<DownloadsResultData> downloadsResultList,  bool isLoading,  bool isError)?  $default,) {final _that = this;
switch (_that) {
case _DownloadsState() when $default != null:
return $default(_that.downloadsResultList,_that.isLoading,_that.isError);case _:
  return null;

}
}

}

/// @nodoc


class _DownloadsState implements DownloadsState {
  const _DownloadsState({required final  List<DownloadsResultData> downloadsResultList, required this.isLoading, required this.isError}): _downloadsResultList = downloadsResultList;
  

 final  List<DownloadsResultData> _downloadsResultList;
@override List<DownloadsResultData> get downloadsResultList {
  if (_downloadsResultList is EqualUnmodifiableListView) return _downloadsResultList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_downloadsResultList);
}

@override final  bool isLoading;
@override final  bool isError;

/// Create a copy of DownloadsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DownloadsStateCopyWith<_DownloadsState> get copyWith => __$DownloadsStateCopyWithImpl<_DownloadsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DownloadsState&&const DeepCollectionEquality().equals(other._downloadsResultList, _downloadsResultList)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_downloadsResultList),isLoading,isError);

@override
String toString() {
  return 'DownloadsState(downloadsResultList: $downloadsResultList, isLoading: $isLoading, isError: $isError)';
}


}

/// @nodoc
abstract mixin class _$DownloadsStateCopyWith<$Res> implements $DownloadsStateCopyWith<$Res> {
  factory _$DownloadsStateCopyWith(_DownloadsState value, $Res Function(_DownloadsState) _then) = __$DownloadsStateCopyWithImpl;
@override @useResult
$Res call({
 List<DownloadsResultData> downloadsResultList, bool isLoading, bool isError
});




}
/// @nodoc
class __$DownloadsStateCopyWithImpl<$Res>
    implements _$DownloadsStateCopyWith<$Res> {
  __$DownloadsStateCopyWithImpl(this._self, this._then);

  final _DownloadsState _self;
  final $Res Function(_DownloadsState) _then;

/// Create a copy of DownloadsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? downloadsResultList = null,Object? isLoading = null,Object? isError = null,}) {
  return _then(_DownloadsState(
downloadsResultList: null == downloadsResultList ? _self._downloadsResultList : downloadsResultList // ignore: cast_nullable_to_non_nullable
as List<DownloadsResultData>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
