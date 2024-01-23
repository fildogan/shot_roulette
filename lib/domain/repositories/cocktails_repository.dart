import 'package:injectable/injectable.dart';
import 'package:shot_roulette/data/remote_data_sources/cocktails_remote_data_source.dart';
import 'package:shot_roulette/domain/responses/cocktail_list_response.dart';
import 'package:shot_roulette/domain/responses/random_cocktail_response.dart';

@injectable
class CocktailsRepository {
  CocktailsRepository({required this.remoteDataSource});

  final CocktailsRemoteRetroFitDataSource remoteDataSource;

  Future<CocktailListByLetterResponse> getCocktailListByLetter(
      String letter) async {
    return remoteDataSource.getCocktailListByLetterResponse(letter: letter);
  }

  Future<RandomCocktailResponse> getRandomCocktail() async {
    return remoteDataSource.getRandomCocktailResponse();
  }
}
