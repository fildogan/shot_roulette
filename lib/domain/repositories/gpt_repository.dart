import 'package:injectable/injectable.dart';
import 'package:shot_roulette/data/remote_data_sources/gpt_remote_data_source.dart';
import 'package:shot_roulette/domain/models/cocktail_model.dart';
import 'package:shot_roulette/domain/responses/cocktail_list_response.dart';

@injectable
class GPTRepository {
  GPTRepository({required this.remoteDataSource});

  final GPTRemoteDataSource remoteDataSource;

  Future<CocktailListResponse> getAICocktail() async {
    return remoteDataSource.getAICocktail();
  }

  Future<String> getAICocktailImage({required CocktailModel cocktail}) async {
    return remoteDataSource.getAICocktailImage(cocktail: cocktail);
  }
}
