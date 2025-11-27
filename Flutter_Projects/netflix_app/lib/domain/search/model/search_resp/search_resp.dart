import 'package:json_annotation/json_annotation.dart';

part 'search_resp.g.dart';

@JsonSerializable()
class SearchResp {
  int? page;
  List<SearchResultData>? results;
  @JsonKey(name: 'total_pages')
  int? totalPages;

  SearchResp({this.page, this.results, this.totalPages});

  factory SearchResp.fromJson(Map<String, dynamic> json) {
    return _$SearchRespFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchRespToJson(this);
}


@JsonSerializable()
class SearchResultData {
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;
  String? title;

  SearchResultData({this.backdropPath, this.title});

  factory SearchResultData.fromJson(Map<String, dynamic> json) {
    return _$SearchResultDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchResultDataToJson(this);
}

