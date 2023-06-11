import 'package:json_annotation/json_annotation.dart';

part 'numberfact.g.dart';

@JsonSerializable()
class Numberfact {
  @JsonKey(name: "text")
  String? text;

  @JsonKey(name: "number")
  int? number;

  @JsonKey(name: "found")
  bool? found;

  @JsonKey(name: "type")
  String? type;

  Numberfact({this.text, this.number, this.found, this.type});

  factory Numberfact.fromJson(Map<String, dynamic> json) {
    return _$NumberfactFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NumberfactToJson(this);
}
