import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'package:retrofit/retrofit.dart';
import 'package:shot_roulette/domain/responses/cocktail_list_response.dart';

part 'cocktails_remote_data_source.g.dart';

@injectable
@RestApi()
abstract class CocktailsRemoteRetroFitDataSource {
  @factoryMethod
  factory CocktailsRemoteRetroFitDataSource(
    Dio dio,
  ) = _CocktailsRemoteRetroFitDataSource;

  @GET('/search.php?f={letter}')
  Future<CocktailListResponse> getCocktailListByLetterResponse(
      {@Path('letter') required String letter});

  @GET('/filter.php?{letter}={category}')
  Future<CocktailListResponse> getCocktailListFilterResponse({
    @Path('category') required String filter,
    @Path('letter') required String letter,
  });

  @GET('/lookup.php?i={id}')
  Future<CocktailListResponse> getCocktailByIdResponse({
    @Path('id') required String id,
  });

  @GET('/random.php')
  Future<CocktailListResponse> getRandomCocktailResponse();
}
