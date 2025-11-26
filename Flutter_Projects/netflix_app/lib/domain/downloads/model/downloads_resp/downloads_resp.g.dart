// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'downloads_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DownloadsResp _$DownloadsRespFromJson(Map<String, dynamic> json) =>
    DownloadsResp(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => DownloadsResultData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DownloadsRespToJson(DownloadsResp instance) =>
    <String, dynamic>{'results': instance.results};

DownloadsResultData _$DownloadsResultDataFromJson(Map<String, dynamic> json) =>
    DownloadsResultData(posterPath: json['poster_path'] as String?);

Map<String, dynamic> _$DownloadsResultDataToJson(
  DownloadsResultData instance,
) => <String, dynamic>{'poster_path': instance.posterPath};
