import 'package:json_annotation/json_annotation.dart';

part 'downloads_resp.g.dart';

@JsonSerializable()
class DownloadsResp {
  List<DownloadsResultData> results;

  DownloadsResp({this.results = const []});

  factory DownloadsResp.fromJson(Map<String, dynamic> json) {
    return _$DownloadsRespFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DownloadsRespToJson(this);
}

@JsonSerializable()
class DownloadsResultData {
  @JsonKey(name: 'poster_path')
  String? posterPath;
  String? title;
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;

  DownloadsResultData({this.posterPath, this.title});

  factory DownloadsResultData.fromJson(Map<String, dynamic> json) {
    return _$DownloadsResultDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DownloadsResultDataToJson(this);
}
