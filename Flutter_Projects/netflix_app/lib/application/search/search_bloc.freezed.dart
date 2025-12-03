// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchEvent()';
}


}

/// @nodoc
class $SearchEventCopyWith<$Res>  {
$SearchEventCopyWith(SearchEvent _, $Res Function(SearchEvent) __);
}


/// Adds pattern-matching-related methods to [SearchEvent].
extension SearchEventPatterns on SearchEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetTopSearchImages value)?  getTopSearchImages,TResult Function( SearchMovies value)?  searchMovies,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetTopSearchImages() when getTopSearchImages != null:
return getTopSearchImages(_that);case SearchMovies() when searchMovies != null:
return searchMovies(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetTopSearchImages value)  getTopSearchImages,required TResult Function( SearchMovies value)  searchMovies,}){
final _that = this;
switch (_that) {
case GetTopSearchImages():
return getTopSearchImages(_that);case SearchMovies():
return searchMovies(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetTopSearchImages value)?  getTopSearchImages,TResult? Function( SearchMovies value)?  searchMovies,}){
final _that = this;
switch (_that) {
case GetTopSearchImages() when getTopSearchImages != null:
return getTopSearchImages(_that);case SearchMovies() when searchMovies != null:
return searchMovies(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getTopSearchImages,TResult Function( String movieQuery)?  searchMovies,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetTopSearchImages() when getTopSearchImages != null:
return getTopSearchImages();case SearchMovies() when searchMovies != null:
return searchMovies(_that.movieQuery);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getTopSearchImages,required TResult Function( String movieQuery)  searchMovies,}) {final _that = this;
switch (_that) {
case GetTopSearchImages():
return getTopSearchImages();case SearchMovies():
return searchMovies(_that.movieQuery);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getTopSearchImages,TResult? Function( String movieQuery)?  searchMovies,}) {final _that = this;
switch (_that) {
case GetTopSearchImages() when getTopSearchImages != null:
return getTopSearchImages();case SearchMovies() when searchMovies != null:
return searchMovies(_that.movieQuery);case _:
  return null;

}
}

}

/// @nodoc


class GetTopSearchImages implements SearchEvent {
  const GetTopSearchImages();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetTopSearchImages);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchEvent.getTopSearchImages()';
}


}




/// @nodoc


class SearchMovies implements SearchEvent {
  const SearchMovies({required this.movieQuery});
  

 final  String movieQuery;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchMoviesCopyWith<SearchMovies> get copyWith => _$SearchMoviesCopyWithImpl<SearchMovies>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchMovies&&(identical(other.movieQuery, movieQuery) || other.movieQuery == movieQuery));
}


@override
int get hashCode => Object.hash(runtimeType,movieQuery);

@override
String toString() {
  return 'SearchEvent.searchMovies(movieQuery: $movieQuery)';
}


}

/// @nodoc
abstract mixin class $SearchMoviesCopyWith<$Res> implements $SearchEventCopyWith<$Res> {
  factory $SearchMoviesCopyWith(SearchMovies value, $Res Function(SearchMovies) _then) = _$SearchMoviesCopyWithImpl;
@useResult
$Res call({
 String movieQuery
});




}
/// @nodoc
class _$SearchMoviesCopyWithImpl<$Res>
    implements $SearchMoviesCopyWith<$Res> {
  _$SearchMoviesCopyWithImpl(this._self, this._then);

  final SearchMovies _self;
  final $Res Function(SearchMovies) _then;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? movieQuery = null,}) {
  return _then(SearchMovies(
movieQuery: null == movieQuery ? _self.movieQuery : movieQuery // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$SearchState {

 List<SearchResultData> get searchResultData; List<SearchResultData> get searchIdle; bool get isLoading; bool get isError; bool get isSearchResult;
/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchStateCopyWith<SearchState> get copyWith => _$SearchStateCopyWithImpl<SearchState>(this as SearchState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchState&&const DeepCollectionEquality().equals(other.searchResultData, searchResultData)&&const DeepCollectionEquality().equals(other.searchIdle, searchIdle)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.isSearchResult, isSearchResult) || other.isSearchResult == isSearchResult));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(searchResultData),const DeepCollectionEquality().hash(searchIdle),isLoading,isError,isSearchResult);

@override
String toString() {
  return 'SearchState(searchResultData: $searchResultData, searchIdle: $searchIdle, isLoading: $isLoading, isError: $isError, isSearchResult: $isSearchResult)';
}


}

/// @nodoc
abstract mixin class $SearchStateCopyWith<$Res>  {
  factory $SearchStateCopyWith(SearchState value, $Res Function(SearchState) _then) = _$SearchStateCopyWithImpl;
@useResult
$Res call({
 List<SearchResultData> searchResultData, List<SearchResultData> searchIdle, bool isLoading, bool isError, bool isSearchResult
});




}
/// @nodoc
class _$SearchStateCopyWithImpl<$Res>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._self, this._then);

  final SearchState _self;
  final $Res Function(SearchState) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? searchResultData = null,Object? searchIdle = null,Object? isLoading = null,Object? isError = null,Object? isSearchResult = null,}) {
  return _then(_self.copyWith(
searchResultData: null == searchResultData ? _self.searchResultData : searchResultData // ignore: cast_nullable_to_non_nullable
as List<SearchResultData>,searchIdle: null == searchIdle ? _self.searchIdle : searchIdle // ignore: cast_nullable_to_non_nullable
as List<SearchResultData>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,isSearchResult: null == isSearchResult ? _self.isSearchResult : isSearchResult // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchState].
extension SearchStatePatterns on SearchState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchState value)  $default,){
final _that = this;
switch (_that) {
case _SearchState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchState value)?  $default,){
final _that = this;
switch (_that) {
case _SearchState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SearchResultData> searchResultData,  List<SearchResultData> searchIdle,  bool isLoading,  bool isError,  bool isSearchResult)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchState() when $default != null:
return $default(_that.searchResultData,_that.searchIdle,_that.isLoading,_that.isError,_that.isSearchResult);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SearchResultData> searchResultData,  List<SearchResultData> searchIdle,  bool isLoading,  bool isError,  bool isSearchResult)  $default,) {final _that = this;
switch (_that) {
case _SearchState():
return $default(_that.searchResultData,_that.searchIdle,_that.isLoading,_that.isError,_that.isSearchResult);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SearchResultData> searchResultData,  List<SearchResultData> searchIdle,  bool isLoading,  bool isError,  bool isSearchResult)?  $default,) {final _that = this;
switch (_that) {
case _SearchState() when $default != null:
return $default(_that.searchResultData,_that.searchIdle,_that.isLoading,_that.isError,_that.isSearchResult);case _:
  return null;

}
}

}

/// @nodoc


class _SearchState implements SearchState {
  const _SearchState({required final  List<SearchResultData> searchResultData, required final  List<SearchResultData> searchIdle, required this.isLoading, required this.isError, required this.isSearchResult}): _searchResultData = searchResultData,_searchIdle = searchIdle;
  

 final  List<SearchResultData> _searchResultData;
@override List<SearchResultData> get searchResultData {
  if (_searchResultData is EqualUnmodifiableListView) return _searchResultData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_searchResultData);
}

 final  List<SearchResultData> _searchIdle;
@override List<SearchResultData> get searchIdle {
  if (_searchIdle is EqualUnmodifiableListView) return _searchIdle;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_searchIdle);
}

@override final  bool isLoading;
@override final  bool isError;
@override final  bool isSearchResult;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchStateCopyWith<_SearchState> get copyWith => __$SearchStateCopyWithImpl<_SearchState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchState&&const DeepCollectionEquality().equals(other._searchResultData, _searchResultData)&&const DeepCollectionEquality().equals(other._searchIdle, _searchIdle)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.isSearchResult, isSearchResult) || other.isSearchResult == isSearchResult));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_searchResultData),const DeepCollectionEquality().hash(_searchIdle),isLoading,isError,isSearchResult);

@override
String toString() {
  return 'SearchState(searchResultData: $searchResultData, searchIdle: $searchIdle, isLoading: $isLoading, isError: $isError, isSearchResult: $isSearchResult)';
}


}

/// @nodoc
abstract mixin class _$SearchStateCopyWith<$Res> implements $SearchStateCopyWith<$Res> {
  factory _$SearchStateCopyWith(_SearchState value, $Res Function(_SearchState) _then) = __$SearchStateCopyWithImpl;
@override @useResult
$Res call({
 List<SearchResultData> searchResultData, List<SearchResultData> searchIdle, bool isLoading, bool isError, bool isSearchResult
});




}
/// @nodoc
class __$SearchStateCopyWithImpl<$Res>
    implements _$SearchStateCopyWith<$Res> {
  __$SearchStateCopyWithImpl(this._self, this._then);

  final _SearchState _self;
  final $Res Function(_SearchState) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? searchResultData = null,Object? searchIdle = null,Object? isLoading = null,Object? isError = null,Object? isSearchResult = null,}) {
  return _then(_SearchState(
searchResultData: null == searchResultData ? _self._searchResultData : searchResultData // ignore: cast_nullable_to_non_nullable
as List<SearchResultData>,searchIdle: null == searchIdle ? _self._searchIdle : searchIdle // ignore: cast_nullable_to_non_nullable
as List<SearchResultData>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,isSearchResult: null == isSearchResult ? _self.isSearchResult : isSearchResult // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
