// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cocktail_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CocktailListResponseImpl _$$CocktailListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CocktailListResponseImpl(
      (json['drinks'] as List<dynamic>?)
          ?.map((e) => CocktailModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CocktailListResponseImplToJson(
        _$CocktailListResponseImpl instance) =>
    <String, dynamic>{
      'drinks': instance.drinks,
    };
