// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_and_hot_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewAndHotResp _$NewAndHotRespFromJson(Map<String, dynamic> json) =>
    NewAndHotResp(
      page: (json['page'] as num?)?.toInt(),
      results:
          (json['results'] as List<dynamic>?)
              ?.map(
                (e) => NewAndHotResultData.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
      totalPages: (json['total_pages'] as num?)?.toInt(),
      totalResults: (json['total_results'] as num?)?.toInt(),
    );

Map<String, dynamic> _$NewAndHotRespToJson(NewAndHotResp instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };

NewAndHotResultData _$NewAndHotResultDataFromJson(Map<String, dynamic> json) =>
    NewAndHotResultData(
      backdropPath: json['backdrop_path'] as String?,
      overview: json['overview'] as String?,
      releaseDate: json['release_date'] as String?,
      title: json['title'] as String?,
      originalTitle: json['original_title'] as String?,
    );

Map<String, dynamic> _$NewAndHotResultDataToJson(
  NewAndHotResultData instance,
) => <String, dynamic>{
  'backdrop_path': instance.backdropPath,
  'overview': instance.overview,
  'release_date': instance.releaseDate,
  'title': instance.title,
  'original_title': instance.originalTitle,
};
