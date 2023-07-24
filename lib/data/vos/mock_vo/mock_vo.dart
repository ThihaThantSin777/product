import 'package:json_annotation/json_annotation.dart';

part 'mock_vo.g.dart';

@JsonSerializable()
class MockVO {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'image')
  String? image;

  MockVO(this.id, this.name, this.image);

  factory MockVO.fromJson(Map<String, dynamic> json) => _$MockVOFromJson(json);

  @override
  String toString() {
    return 'MockVO{id: $id, name: $name, image: $image}';
  }
}
