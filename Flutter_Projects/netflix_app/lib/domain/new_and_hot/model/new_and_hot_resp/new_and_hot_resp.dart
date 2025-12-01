import 'package:json_annotation/json_annotation.dart';

part 'new_and_hot_resp.g.dart';

@JsonSerializable()
class NewAndHotResp {
  int? page;
  List<NewAndHotResultData> results;
  @JsonKey(name: 'total_pages')
  int? totalPages;
  @JsonKey(name: 'total_results')
  int? totalResults;

  NewAndHotResp({
    this.page,
    this.results = const [],
    this.totalPages,
    this.totalResults,
  });

  factory NewAndHotResp.fromJson(Map<String, dynamic> json) {
    return _$NewAndHotRespFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NewAndHotRespToJson(this);
}

@JsonSerializable()
class NewAndHotResultData {
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;
  String? overview;
  @JsonKey(name: 'release_date')
  String? releaseDate;
  String? title;
  @JsonKey(name: 'original_title')
  String? originalTitle;

  NewAndHotResultData({
    this.backdropPath,
    this.overview,
    this.releaseDate,
    this.title,
    this.originalTitle,
  });

  factory NewAndHotResultData.fromJson(Map<String, dynamic> json) {
    return _$NewAndHotResultDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NewAndHotResultDataToJson(this);
}
