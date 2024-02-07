// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FilterListResponseImpl _$$FilterListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$FilterListResponseImpl(
      (json['drinks'] as List<dynamic>)
          .map((e) => FilterModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FilterListResponseImplToJson(
        _$FilterListResponseImpl instance) =>
    <String, dynamic>{
      'drinks': instance.drinks,
    };
