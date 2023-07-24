import 'package:json_annotation/json_annotation.dart';

import '../../../data/vos/mock_vo/mock_vo.dart';

part 'mock_response.g.dart';

@JsonSerializable()
class MockResponse {
  @JsonKey(name: 'code')
  int? code;

  @JsonKey(name: 'message')
  String? status;

  @JsonKey(name: 'data')
  List<MockVO>? data;

  MockResponse(this.code, this.status, this.data);

  factory MockResponse.fromJson(Map<String, dynamic> json) =>
      _$MockResponseFromJson(json);

  @override
  String toString() {
    return 'MockResponse{code: $code, status: $status, data: $data}';
  }
}
