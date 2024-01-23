// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cocktail_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CocktailListByLetterResponseImpl _$$CocktailListByLetterResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CocktailListByLetterResponseImpl(
      (json['drinks'] as List<dynamic>)
          .map((e) => CocktailModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CocktailListByLetterResponseImplToJson(
        _$CocktailListByLetterResponseImpl instance) =>
    <String, dynamic>{
      'drinks': instance.drinks,
    };
