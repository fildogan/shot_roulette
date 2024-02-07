import 'package:injectable/injectable.dart';
import 'package:shot_roulette/data/remote_data_sources/ratings_remote_data_source.dart';
import 'package:shot_roulette/domain/models/rated_cocktail_model.dart';

@injectable
class RatingsRepository {
  RatingsRepository({required this.remoteDataSource});

  final RatingsRemoteDataSource remoteDataSource;

  Future<RatedCocktailModel> getRatingsById(String id) async {
    return remoteDataSource.getRatingsById(id);
  }

  Future<void> add({
    required String cocktailId,
    required double value,
  }) async {
    remoteDataSource.add(cocktailId: cocktailId, value: value);
  }

  Future<void> remove({
    required String cocktailId,
    required double value,
  }) async {
    remoteDataSource.remove(cocktailId: cocktailId, value: value);
  }

  Future<void> create({
    required String cocktailId,
    required double value,
  }) async {
    remoteDataSource.create(cocktailId: cocktailId, value: value);
  }
}
