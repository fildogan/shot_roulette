import 'package:injectable/injectable.dart';
import 'package:shot_roulette/data/remote_data_sources/cocktails_remote_data_source.dart';
import 'package:shot_roulette/domain/responses/cocktail_list_response.dart';

@injectable
class CocktailsRepository {
  CocktailsRepository({required this.remoteDataSource});

  final CocktailsRemoteRetroFitDataSource remoteDataSource;

  Future<CocktailListResponse> getCocktailListByLetter(String letter) async {
    return remoteDataSource.getCocktailListByLetterResponse(letter: letter);
  }

  Future<CocktailListResponse> getCocktailListFilter(
      String filter, String letter) async {
    return remoteDataSource.getCocktailListFilterResponse(
        filter: filter, letter: letter);
  }

  Future<CocktailListResponse> getRandomCocktail() async {
    return remoteDataSource.getRandomCocktailResponse();
  }

  Future<CocktailListResponse> getCocktailById(String id) async {
    return remoteDataSource.getCocktailByIdResponse(id: id);
  }
}
