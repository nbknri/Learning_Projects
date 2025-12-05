// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent()';
}


}

/// @nodoc
class $HomeEventCopyWith<$Res>  {
$HomeEventCopyWith(HomeEvent _, $Res Function(HomeEvent) __);
}


/// Adds pattern-matching-related methods to [HomeEvent].
extension HomeEventPatterns on HomeEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetHomeScreenData value)?  getHomeScreenData,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetHomeScreenData() when getHomeScreenData != null:
return getHomeScreenData(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetHomeScreenData value)  getHomeScreenData,}){
final _that = this;
switch (_that) {
case GetHomeScreenData():
return getHomeScreenData(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetHomeScreenData value)?  getHomeScreenData,}){
final _that = this;
switch (_that) {
case GetHomeScreenData() when getHomeScreenData != null:
return getHomeScreenData(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getHomeScreenData,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetHomeScreenData() when getHomeScreenData != null:
return getHomeScreenData();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getHomeScreenData,}) {final _that = this;
switch (_that) {
case GetHomeScreenData():
return getHomeScreenData();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getHomeScreenData,}) {final _that = this;
switch (_that) {
case GetHomeScreenData() when getHomeScreenData != null:
return getHomeScreenData();case _:
  return null;

}
}

}

/// @nodoc


class GetHomeScreenData implements HomeEvent {
  const GetHomeScreenData();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetHomeScreenData);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.getHomeScreenData()';
}


}




/// @nodoc
mixin _$HomeState {

 String get stateId; List<NewAndHotResultData> get pastYearMovieList; List<NewAndHotResultData> get trendingMovieList; List<NewAndHotResultData> get tensDramaMovieList; List<NewAndHotResultData> get southIndianMovieList; List<NewAndHotResultData> get topTenTvList; List<DownloadsResultData> get bigImageList; bool get isError; bool get isLoading;
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateCopyWith<HomeState> get copyWith => _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState&&(identical(other.stateId, stateId) || other.stateId == stateId)&&const DeepCollectionEquality().equals(other.pastYearMovieList, pastYearMovieList)&&const DeepCollectionEquality().equals(other.trendingMovieList, trendingMovieList)&&const DeepCollectionEquality().equals(other.tensDramaMovieList, tensDramaMovieList)&&const DeepCollectionEquality().equals(other.southIndianMovieList, southIndianMovieList)&&const DeepCollectionEquality().equals(other.topTenTvList, topTenTvList)&&const DeepCollectionEquality().equals(other.bigImageList, bigImageList)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,stateId,const DeepCollectionEquality().hash(pastYearMovieList),const DeepCollectionEquality().hash(trendingMovieList),const DeepCollectionEquality().hash(tensDramaMovieList),const DeepCollectionEquality().hash(southIndianMovieList),const DeepCollectionEquality().hash(topTenTvList),const DeepCollectionEquality().hash(bigImageList),isError,isLoading);

@override
String toString() {
  return 'HomeState(stateId: $stateId, pastYearMovieList: $pastYearMovieList, trendingMovieList: $trendingMovieList, tensDramaMovieList: $tensDramaMovieList, southIndianMovieList: $southIndianMovieList, topTenTvList: $topTenTvList, bigImageList: $bigImageList, isError: $isError, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res>  {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) = _$HomeStateCopyWithImpl;
@useResult
$Res call({
 String stateId, List<NewAndHotResultData> pastYearMovieList, List<NewAndHotResultData> trendingMovieList, List<NewAndHotResultData> tensDramaMovieList, List<NewAndHotResultData> southIndianMovieList, List<NewAndHotResultData> topTenTvList, List<DownloadsResultData> bigImageList, bool isError, bool isLoading
});




}
/// @nodoc
class _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? stateId = null,Object? pastYearMovieList = null,Object? trendingMovieList = null,Object? tensDramaMovieList = null,Object? southIndianMovieList = null,Object? topTenTvList = null,Object? bigImageList = null,Object? isError = null,Object? isLoading = null,}) {
  return _then(_self.copyWith(
stateId: null == stateId ? _self.stateId : stateId // ignore: cast_nullable_to_non_nullable
as String,pastYearMovieList: null == pastYearMovieList ? _self.pastYearMovieList : pastYearMovieList // ignore: cast_nullable_to_non_nullable
as List<NewAndHotResultData>,trendingMovieList: null == trendingMovieList ? _self.trendingMovieList : trendingMovieList // ignore: cast_nullable_to_non_nullable
as List<NewAndHotResultData>,tensDramaMovieList: null == tensDramaMovieList ? _self.tensDramaMovieList : tensDramaMovieList // ignore: cast_nullable_to_non_nullable
as List<NewAndHotResultData>,southIndianMovieList: null == southIndianMovieList ? _self.southIndianMovieList : southIndianMovieList // ignore: cast_nullable_to_non_nullable
as List<NewAndHotResultData>,topTenTvList: null == topTenTvList ? _self.topTenTvList : topTenTvList // ignore: cast_nullable_to_non_nullable
as List<NewAndHotResultData>,bigImageList: null == bigImageList ? _self.bigImageList : bigImageList // ignore: cast_nullable_to_non_nullable
as List<DownloadsResultData>,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeState value)  $default,){
final _that = this;
switch (_that) {
case _HomeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeState value)?  $default,){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String stateId,  List<NewAndHotResultData> pastYearMovieList,  List<NewAndHotResultData> trendingMovieList,  List<NewAndHotResultData> tensDramaMovieList,  List<NewAndHotResultData> southIndianMovieList,  List<NewAndHotResultData> topTenTvList,  List<DownloadsResultData> bigImageList,  bool isError,  bool isLoading)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.stateId,_that.pastYearMovieList,_that.trendingMovieList,_that.tensDramaMovieList,_that.southIndianMovieList,_that.topTenTvList,_that.bigImageList,_that.isError,_that.isLoading);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String stateId,  List<NewAndHotResultData> pastYearMovieList,  List<NewAndHotResultData> trendingMovieList,  List<NewAndHotResultData> tensDramaMovieList,  List<NewAndHotResultData> southIndianMovieList,  List<NewAndHotResultData> topTenTvList,  List<DownloadsResultData> bigImageList,  bool isError,  bool isLoading)  $default,) {final _that = this;
switch (_that) {
case _HomeState():
return $default(_that.stateId,_that.pastYearMovieList,_that.trendingMovieList,_that.tensDramaMovieList,_that.southIndianMovieList,_that.topTenTvList,_that.bigImageList,_that.isError,_that.isLoading);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String stateId,  List<NewAndHotResultData> pastYearMovieList,  List<NewAndHotResultData> trendingMovieList,  List<NewAndHotResultData> tensDramaMovieList,  List<NewAndHotResultData> southIndianMovieList,  List<NewAndHotResultData> topTenTvList,  List<DownloadsResultData> bigImageList,  bool isError,  bool isLoading)?  $default,) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.stateId,_that.pastYearMovieList,_that.trendingMovieList,_that.tensDramaMovieList,_that.southIndianMovieList,_that.topTenTvList,_that.bigImageList,_that.isError,_that.isLoading);case _:
  return null;

}
}

}

/// @nodoc


class _HomeState implements HomeState {
  const _HomeState({required this.stateId, required final  List<NewAndHotResultData> pastYearMovieList, required final  List<NewAndHotResultData> trendingMovieList, required final  List<NewAndHotResultData> tensDramaMovieList, required final  List<NewAndHotResultData> southIndianMovieList, required final  List<NewAndHotResultData> topTenTvList, required final  List<DownloadsResultData> bigImageList, required this.isError, required this.isLoading}): _pastYearMovieList = pastYearMovieList,_trendingMovieList = trendingMovieList,_tensDramaMovieList = tensDramaMovieList,_southIndianMovieList = southIndianMovieList,_topTenTvList = topTenTvList,_bigImageList = bigImageList;
  

@override final  String stateId;
 final  List<NewAndHotResultData> _pastYearMovieList;
@override List<NewAndHotResultData> get pastYearMovieList {
  if (_pastYearMovieList is EqualUnmodifiableListView) return _pastYearMovieList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pastYearMovieList);
}

 final  List<NewAndHotResultData> _trendingMovieList;
@override List<NewAndHotResultData> get trendingMovieList {
  if (_trendingMovieList is EqualUnmodifiableListView) return _trendingMovieList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_trendingMovieList);
}

 final  List<NewAndHotResultData> _tensDramaMovieList;
@override List<NewAndHotResultData> get tensDramaMovieList {
  if (_tensDramaMovieList is EqualUnmodifiableListView) return _tensDramaMovieList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tensDramaMovieList);
}

 final  List<NewAndHotResultData> _southIndianMovieList;
@override List<NewAndHotResultData> get southIndianMovieList {
  if (_southIndianMovieList is EqualUnmodifiableListView) return _southIndianMovieList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_southIndianMovieList);
}

 final  List<NewAndHotResultData> _topTenTvList;
@override List<NewAndHotResultData> get topTenTvList {
  if (_topTenTvList is EqualUnmodifiableListView) return _topTenTvList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_topTenTvList);
}

 final  List<DownloadsResultData> _bigImageList;
@override List<DownloadsResultData> get bigImageList {
  if (_bigImageList is EqualUnmodifiableListView) return _bigImageList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_bigImageList);
}

@override final  bool isError;
@override final  bool isLoading;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeStateCopyWith<_HomeState> get copyWith => __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeState&&(identical(other.stateId, stateId) || other.stateId == stateId)&&const DeepCollectionEquality().equals(other._pastYearMovieList, _pastYearMovieList)&&const DeepCollectionEquality().equals(other._trendingMovieList, _trendingMovieList)&&const DeepCollectionEquality().equals(other._tensDramaMovieList, _tensDramaMovieList)&&const DeepCollectionEquality().equals(other._southIndianMovieList, _southIndianMovieList)&&const DeepCollectionEquality().equals(other._topTenTvList, _topTenTvList)&&const DeepCollectionEquality().equals(other._bigImageList, _bigImageList)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,stateId,const DeepCollectionEquality().hash(_pastYearMovieList),const DeepCollectionEquality().hash(_trendingMovieList),const DeepCollectionEquality().hash(_tensDramaMovieList),const DeepCollectionEquality().hash(_southIndianMovieList),const DeepCollectionEquality().hash(_topTenTvList),const DeepCollectionEquality().hash(_bigImageList),isError,isLoading);

@override
String toString() {
  return 'HomeState(stateId: $stateId, pastYearMovieList: $pastYearMovieList, trendingMovieList: $trendingMovieList, tensDramaMovieList: $tensDramaMovieList, southIndianMovieList: $southIndianMovieList, topTenTvList: $topTenTvList, bigImageList: $bigImageList, isError: $isError, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(_HomeState value, $Res Function(_HomeState) _then) = __$HomeStateCopyWithImpl;
@override @useResult
$Res call({
 String stateId, List<NewAndHotResultData> pastYearMovieList, List<NewAndHotResultData> trendingMovieList, List<NewAndHotResultData> tensDramaMovieList, List<NewAndHotResultData> southIndianMovieList, List<NewAndHotResultData> topTenTvList, List<DownloadsResultData> bigImageList, bool isError, bool isLoading
});




}
/// @nodoc
class __$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? stateId = null,Object? pastYearMovieList = null,Object? trendingMovieList = null,Object? tensDramaMovieList = null,Object? southIndianMovieList = null,Object? topTenTvList = null,Object? bigImageList = null,Object? isError = null,Object? isLoading = null,}) {
  return _then(_HomeState(
stateId: null == stateId ? _self.stateId : stateId // ignore: cast_nullable_to_non_nullable
as String,pastYearMovieList: null == pastYearMovieList ? _self._pastYearMovieList : pastYearMovieList // ignore: cast_nullable_to_non_nullable
as List<NewAndHotResultData>,trendingMovieList: null == trendingMovieList ? _self._trendingMovieList : trendingMovieList // ignore: cast_nullable_to_non_nullable
as List<NewAndHotResultData>,tensDramaMovieList: null == tensDramaMovieList ? _self._tensDramaMovieList : tensDramaMovieList // ignore: cast_nullable_to_non_nullable
as List<NewAndHotResultData>,southIndianMovieList: null == southIndianMovieList ? _self._southIndianMovieList : southIndianMovieList // ignore: cast_nullable_to_non_nullable
as List<NewAndHotResultData>,topTenTvList: null == topTenTvList ? _self._topTenTvList : topTenTvList // ignore: cast_nullable_to_non_nullable
as List<NewAndHotResultData>,bigImageList: null == bigImageList ? _self._bigImageList : bigImageList // ignore: cast_nullable_to_non_nullable
as List<DownloadsResultData>,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
