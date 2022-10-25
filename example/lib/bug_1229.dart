import 'package:json_annotation/json_annotation.dart';

part 'bug_1229.g.dart';


class DateTimeConverter extends JsonConverter<DateTime, String> {
  const DateTimeConverter();
  @override
  DateTime fromJson(String json) => DateTime.parse(json).toLocal();
  @override
  String toJson(DateTime object) => object.toUtc().toIso8601String();
}

@JsonSerializable()
@DateTimeConverter()
class Bug1229 {
  @JsonKey(includeIfNull: false)
  final DateTime? date;

  Bug1229({
    this.date,
  });

  factory Bug1229.fromJson(Map<String, dynamic> json) => _$Bug1229FromJson(json);

  Map<String, dynamic> toJson() => _$Bug1229ToJson(this);
}