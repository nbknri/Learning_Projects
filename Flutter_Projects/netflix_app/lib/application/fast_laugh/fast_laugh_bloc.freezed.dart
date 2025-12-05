// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fast_laugh_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FastLaughEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FastLaughEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FastLaughEvent()';
}


}

/// @nodoc
class $FastLaughEventCopyWith<$Res>  {
$FastLaughEventCopyWith(FastLaughEvent _, $Res Function(FastLaughEvent) __);
}


/// Adds pattern-matching-related methods to [FastLaughEvent].
extension FastLaughEventPatterns on FastLaughEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initialize value)?  initialize,TResult Function( LikeVideo value)?  likeVideo,TResult Function( UnLikeVideo value)?  unlikeVideo,TResult Function( AddedToMyList value)?  addedToMyList,TResult Function( RemoveToMyList value)?  removeToMyList,TResult Function( SoundMuted value)?  soundMuted,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Initialize() when initialize != null:
return initialize(_that);case LikeVideo() when likeVideo != null:
return likeVideo(_that);case UnLikeVideo() when unlikeVideo != null:
return unlikeVideo(_that);case AddedToMyList() when addedToMyList != null:
return addedToMyList(_that);case RemoveToMyList() when removeToMyList != null:
return removeToMyList(_that);case SoundMuted() when soundMuted != null:
return soundMuted(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initialize value)  initialize,required TResult Function( LikeVideo value)  likeVideo,required TResult Function( UnLikeVideo value)  unlikeVideo,required TResult Function( AddedToMyList value)  addedToMyList,required TResult Function( RemoveToMyList value)  removeToMyList,required TResult Function( SoundMuted value)  soundMuted,}){
final _that = this;
switch (_that) {
case Initialize():
return initialize(_that);case LikeVideo():
return likeVideo(_that);case UnLikeVideo():
return unlikeVideo(_that);case AddedToMyList():
return addedToMyList(_that);case RemoveToMyList():
return removeToMyList(_that);case SoundMuted():
return soundMuted(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initialize value)?  initialize,TResult? Function( LikeVideo value)?  likeVideo,TResult? Function( UnLikeVideo value)?  unlikeVideo,TResult? Function( AddedToMyList value)?  addedToMyList,TResult? Function( RemoveToMyList value)?  removeToMyList,TResult? Function( SoundMuted value)?  soundMuted,}){
final _that = this;
switch (_that) {
case Initialize() when initialize != null:
return initialize(_that);case LikeVideo() when likeVideo != null:
return likeVideo(_that);case UnLikeVideo() when unlikeVideo != null:
return unlikeVideo(_that);case AddedToMyList() when addedToMyList != null:
return addedToMyList(_that);case RemoveToMyList() when removeToMyList != null:
return removeToMyList(_that);case SoundMuted() when soundMuted != null:
return soundMuted(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initialize,TResult Function( int id)?  likeVideo,TResult Function( int id)?  unlikeVideo,TResult Function( int id)?  addedToMyList,TResult Function( int id)?  removeToMyList,TResult Function( bool isMuted)?  soundMuted,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Initialize() when initialize != null:
return initialize();case LikeVideo() when likeVideo != null:
return likeVideo(_that.id);case UnLikeVideo() when unlikeVideo != null:
return unlikeVideo(_that.id);case AddedToMyList() when addedToMyList != null:
return addedToMyList(_that.id);case RemoveToMyList() when removeToMyList != null:
return removeToMyList(_that.id);case SoundMuted() when soundMuted != null:
return soundMuted(_that.isMuted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initialize,required TResult Function( int id)  likeVideo,required TResult Function( int id)  unlikeVideo,required TResult Function( int id)  addedToMyList,required TResult Function( int id)  removeToMyList,required TResult Function( bool isMuted)  soundMuted,}) {final _that = this;
switch (_that) {
case Initialize():
return initialize();case LikeVideo():
return likeVideo(_that.id);case UnLikeVideo():
return unlikeVideo(_that.id);case AddedToMyList():
return addedToMyList(_that.id);case RemoveToMyList():
return removeToMyList(_that.id);case SoundMuted():
return soundMuted(_that.isMuted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initialize,TResult? Function( int id)?  likeVideo,TResult? Function( int id)?  unlikeVideo,TResult? Function( int id)?  addedToMyList,TResult? Function( int id)?  removeToMyList,TResult? Function( bool isMuted)?  soundMuted,}) {final _that = this;
switch (_that) {
case Initialize() when initialize != null:
return initialize();case LikeVideo() when likeVideo != null:
return likeVideo(_that.id);case UnLikeVideo() when unlikeVideo != null:
return unlikeVideo(_that.id);case AddedToMyList() when addedToMyList != null:
return addedToMyList(_that.id);case RemoveToMyList() when removeToMyList != null:
return removeToMyList(_that.id);case SoundMuted() when soundMuted != null:
return soundMuted(_that.isMuted);case _:
  return null;

}
}

}

/// @nodoc


class Initialize implements FastLaughEvent {
  const Initialize();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initialize);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FastLaughEvent.initialize()';
}


}




/// @nodoc


class LikeVideo implements FastLaughEvent {
  const LikeVideo({required this.id});
  

 final  int id;

/// Create a copy of FastLaughEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LikeVideoCopyWith<LikeVideo> get copyWith => _$LikeVideoCopyWithImpl<LikeVideo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LikeVideo&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'FastLaughEvent.likeVideo(id: $id)';
}


}

/// @nodoc
abstract mixin class $LikeVideoCopyWith<$Res> implements $FastLaughEventCopyWith<$Res> {
  factory $LikeVideoCopyWith(LikeVideo value, $Res Function(LikeVideo) _then) = _$LikeVideoCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$LikeVideoCopyWithImpl<$Res>
    implements $LikeVideoCopyWith<$Res> {
  _$LikeVideoCopyWithImpl(this._self, this._then);

  final LikeVideo _self;
  final $Res Function(LikeVideo) _then;

/// Create a copy of FastLaughEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(LikeVideo(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class UnLikeVideo implements FastLaughEvent {
  const UnLikeVideo({required this.id});
  

 final  int id;

/// Create a copy of FastLaughEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnLikeVideoCopyWith<UnLikeVideo> get copyWith => _$UnLikeVideoCopyWithImpl<UnLikeVideo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnLikeVideo&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'FastLaughEvent.unlikeVideo(id: $id)';
}


}

/// @nodoc
abstract mixin class $UnLikeVideoCopyWith<$Res> implements $FastLaughEventCopyWith<$Res> {
  factory $UnLikeVideoCopyWith(UnLikeVideo value, $Res Function(UnLikeVideo) _then) = _$UnLikeVideoCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$UnLikeVideoCopyWithImpl<$Res>
    implements $UnLikeVideoCopyWith<$Res> {
  _$UnLikeVideoCopyWithImpl(this._self, this._then);

  final UnLikeVideo _self;
  final $Res Function(UnLikeVideo) _then;

/// Create a copy of FastLaughEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(UnLikeVideo(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class AddedToMyList implements FastLaughEvent {
  const AddedToMyList({required this.id});
  

 final  int id;

/// Create a copy of FastLaughEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddedToMyListCopyWith<AddedToMyList> get copyWith => _$AddedToMyListCopyWithImpl<AddedToMyList>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddedToMyList&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'FastLaughEvent.addedToMyList(id: $id)';
}


}

/// @nodoc
abstract mixin class $AddedToMyListCopyWith<$Res> implements $FastLaughEventCopyWith<$Res> {
  factory $AddedToMyListCopyWith(AddedToMyList value, $Res Function(AddedToMyList) _then) = _$AddedToMyListCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$AddedToMyListCopyWithImpl<$Res>
    implements $AddedToMyListCopyWith<$Res> {
  _$AddedToMyListCopyWithImpl(this._self, this._then);

  final AddedToMyList _self;
  final $Res Function(AddedToMyList) _then;

/// Create a copy of FastLaughEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(AddedToMyList(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class RemoveToMyList implements FastLaughEvent {
  const RemoveToMyList({required this.id});
  

 final  int id;

/// Create a copy of FastLaughEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemoveToMyListCopyWith<RemoveToMyList> get copyWith => _$RemoveToMyListCopyWithImpl<RemoveToMyList>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoveToMyList&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'FastLaughEvent.removeToMyList(id: $id)';
}


}

/// @nodoc
abstract mixin class $RemoveToMyListCopyWith<$Res> implements $FastLaughEventCopyWith<$Res> {
  factory $RemoveToMyListCopyWith(RemoveToMyList value, $Res Function(RemoveToMyList) _then) = _$RemoveToMyListCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class _$RemoveToMyListCopyWithImpl<$Res>
    implements $RemoveToMyListCopyWith<$Res> {
  _$RemoveToMyListCopyWithImpl(this._self, this._then);

  final RemoveToMyList _self;
  final $Res Function(RemoveToMyList) _then;

/// Create a copy of FastLaughEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(RemoveToMyList(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class SoundMuted implements FastLaughEvent {
  const SoundMuted({required this.isMuted});
  

 final  bool isMuted;

/// Create a copy of FastLaughEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SoundMutedCopyWith<SoundMuted> get copyWith => _$SoundMutedCopyWithImpl<SoundMuted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SoundMuted&&(identical(other.isMuted, isMuted) || other.isMuted == isMuted));
}


@override
int get hashCode => Object.hash(runtimeType,isMuted);

@override
String toString() {
  return 'FastLaughEvent.soundMuted(isMuted: $isMuted)';
}


}

/// @nodoc
abstract mixin class $SoundMutedCopyWith<$Res> implements $FastLaughEventCopyWith<$Res> {
  factory $SoundMutedCopyWith(SoundMuted value, $Res Function(SoundMuted) _then) = _$SoundMutedCopyWithImpl;
@useResult
$Res call({
 bool isMuted
});




}
/// @nodoc
class _$SoundMutedCopyWithImpl<$Res>
    implements $SoundMutedCopyWith<$Res> {
  _$SoundMutedCopyWithImpl(this._self, this._then);

  final SoundMuted _self;
  final $Res Function(SoundMuted) _then;

/// Create a copy of FastLaughEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isMuted = null,}) {
  return _then(SoundMuted(
isMuted: null == isMuted ? _self.isMuted : isMuted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$FastLaughState {

 List<DownloadsResultData> get videoList; bool get isLoading; bool get isError; List<int> get likedVideoIds; List<int> get myListVideoIds; bool get isMuted;
/// Create a copy of FastLaughState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FastLaughStateCopyWith<FastLaughState> get copyWith => _$FastLaughStateCopyWithImpl<FastLaughState>(this as FastLaughState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FastLaughState&&const DeepCollectionEquality().equals(other.videoList, videoList)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError)&&const DeepCollectionEquality().equals(other.likedVideoIds, likedVideoIds)&&const DeepCollectionEquality().equals(other.myListVideoIds, myListVideoIds)&&(identical(other.isMuted, isMuted) || other.isMuted == isMuted));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(videoList),isLoading,isError,const DeepCollectionEquality().hash(likedVideoIds),const DeepCollectionEquality().hash(myListVideoIds),isMuted);

@override
String toString() {
  return 'FastLaughState(videoList: $videoList, isLoading: $isLoading, isError: $isError, likedVideoIds: $likedVideoIds, myListVideoIds: $myListVideoIds, isMuted: $isMuted)';
}


}

/// @nodoc
abstract mixin class $FastLaughStateCopyWith<$Res>  {
  factory $FastLaughStateCopyWith(FastLaughState value, $Res Function(FastLaughState) _then) = _$FastLaughStateCopyWithImpl;
@useResult
$Res call({
 List<DownloadsResultData> videoList, bool isLoading, bool isError, List<int> likedVideoIds, List<int> myListVideoIds, bool isMuted
});




}
/// @nodoc
class _$FastLaughStateCopyWithImpl<$Res>
    implements $FastLaughStateCopyWith<$Res> {
  _$FastLaughStateCopyWithImpl(this._self, this._then);

  final FastLaughState _self;
  final $Res Function(FastLaughState) _then;

/// Create a copy of FastLaughState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? videoList = null,Object? isLoading = null,Object? isError = null,Object? likedVideoIds = null,Object? myListVideoIds = null,Object? isMuted = null,}) {
  return _then(_self.copyWith(
videoList: null == videoList ? _self.videoList : videoList // ignore: cast_nullable_to_non_nullable
as List<DownloadsResultData>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,likedVideoIds: null == likedVideoIds ? _self.likedVideoIds : likedVideoIds // ignore: cast_nullable_to_non_nullable
as List<int>,myListVideoIds: null == myListVideoIds ? _self.myListVideoIds : myListVideoIds // ignore: cast_nullable_to_non_nullable
as List<int>,isMuted: null == isMuted ? _self.isMuted : isMuted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [FastLaughState].
extension FastLaughStatePatterns on FastLaughState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FastLaughState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FastLaughState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FastLaughState value)  $default,){
final _that = this;
switch (_that) {
case _FastLaughState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FastLaughState value)?  $default,){
final _that = this;
switch (_that) {
case _FastLaughState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<DownloadsResultData> videoList,  bool isLoading,  bool isError,  List<int> likedVideoIds,  List<int> myListVideoIds,  bool isMuted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FastLaughState() when $default != null:
return $default(_that.videoList,_that.isLoading,_that.isError,_that.likedVideoIds,_that.myListVideoIds,_that.isMuted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<DownloadsResultData> videoList,  bool isLoading,  bool isError,  List<int> likedVideoIds,  List<int> myListVideoIds,  bool isMuted)  $default,) {final _that = this;
switch (_that) {
case _FastLaughState():
return $default(_that.videoList,_that.isLoading,_that.isError,_that.likedVideoIds,_that.myListVideoIds,_that.isMuted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<DownloadsResultData> videoList,  bool isLoading,  bool isError,  List<int> likedVideoIds,  List<int> myListVideoIds,  bool isMuted)?  $default,) {final _that = this;
switch (_that) {
case _FastLaughState() when $default != null:
return $default(_that.videoList,_that.isLoading,_that.isError,_that.likedVideoIds,_that.myListVideoIds,_that.isMuted);case _:
  return null;

}
}

}

/// @nodoc


class _FastLaughState implements FastLaughState {
  const _FastLaughState({required final  List<DownloadsResultData> videoList, required this.isLoading, required this.isError, required final  List<int> likedVideoIds, required final  List<int> myListVideoIds, required this.isMuted}): _videoList = videoList,_likedVideoIds = likedVideoIds,_myListVideoIds = myListVideoIds;
  

 final  List<DownloadsResultData> _videoList;
@override List<DownloadsResultData> get videoList {
  if (_videoList is EqualUnmodifiableListView) return _videoList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_videoList);
}

@override final  bool isLoading;
@override final  bool isError;
 final  List<int> _likedVideoIds;
@override List<int> get likedVideoIds {
  if (_likedVideoIds is EqualUnmodifiableListView) return _likedVideoIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_likedVideoIds);
}

 final  List<int> _myListVideoIds;
@override List<int> get myListVideoIds {
  if (_myListVideoIds is EqualUnmodifiableListView) return _myListVideoIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_myListVideoIds);
}

@override final  bool isMuted;

/// Create a copy of FastLaughState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FastLaughStateCopyWith<_FastLaughState> get copyWith => __$FastLaughStateCopyWithImpl<_FastLaughState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FastLaughState&&const DeepCollectionEquality().equals(other._videoList, _videoList)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError)&&const DeepCollectionEquality().equals(other._likedVideoIds, _likedVideoIds)&&const DeepCollectionEquality().equals(other._myListVideoIds, _myListVideoIds)&&(identical(other.isMuted, isMuted) || other.isMuted == isMuted));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_videoList),isLoading,isError,const DeepCollectionEquality().hash(_likedVideoIds),const DeepCollectionEquality().hash(_myListVideoIds),isMuted);

@override
String toString() {
  return 'FastLaughState(videoList: $videoList, isLoading: $isLoading, isError: $isError, likedVideoIds: $likedVideoIds, myListVideoIds: $myListVideoIds, isMuted: $isMuted)';
}


}

/// @nodoc
abstract mixin class _$FastLaughStateCopyWith<$Res> implements $FastLaughStateCopyWith<$Res> {
  factory _$FastLaughStateCopyWith(_FastLaughState value, $Res Function(_FastLaughState) _then) = __$FastLaughStateCopyWithImpl;
@override @useResult
$Res call({
 List<DownloadsResultData> videoList, bool isLoading, bool isError, List<int> likedVideoIds, List<int> myListVideoIds, bool isMuted
});




}
/// @nodoc
class __$FastLaughStateCopyWithImpl<$Res>
    implements _$FastLaughStateCopyWith<$Res> {
  __$FastLaughStateCopyWithImpl(this._self, this._then);

  final _FastLaughState _self;
  final $Res Function(_FastLaughState) _then;

/// Create a copy of FastLaughState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? videoList = null,Object? isLoading = null,Object? isError = null,Object? likedVideoIds = null,Object? myListVideoIds = null,Object? isMuted = null,}) {
  return _then(_FastLaughState(
videoList: null == videoList ? _self._videoList : videoList // ignore: cast_nullable_to_non_nullable
as List<DownloadsResultData>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,likedVideoIds: null == likedVideoIds ? _self._likedVideoIds : likedVideoIds // ignore: cast_nullable_to_non_nullable
as List<int>,myListVideoIds: null == myListVideoIds ? _self._myListVideoIds : myListVideoIds // ignore: cast_nullable_to_non_nullable
as List<int>,isMuted: null == isMuted ? _self.isMuted : isMuted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
