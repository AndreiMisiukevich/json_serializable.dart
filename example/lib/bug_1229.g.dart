// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bug_1229.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Bug1229 _$Bug1229FromJson(Map<String, dynamic> json) => Bug1229(
      date: _$JsonConverterFromJson<String, DateTime>(
          json['date'], const DateTimeConverter().fromJson),
    );

Map<String, dynamic> _$Bug1229ToJson(Bug1229 instance) => <String, dynamic>{
      'date': _$JsonConverterToJson<String, DateTime>(
          instance.date, const DateTimeConverter().toJson),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
