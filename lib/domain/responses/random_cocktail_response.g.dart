// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'random_cocktail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RandomCocktailResponseImpl _$$RandomCocktailResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RandomCocktailResponseImpl(
      (json['drinks'] as List<dynamic>)
          .map((e) => CocktailModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RandomCocktailResponseImplToJson(
        _$RandomCocktailResponseImpl instance) =>
    <String, dynamic>{
      'drinks': instance.drinks,
    };
