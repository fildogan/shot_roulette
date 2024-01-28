import 'package:injectable/injectable.dart';
import 'package:shot_roulette/data/remote_data_sources/favourites_remote_data_source.dart';

@injectable
class FavouritesRepository {
  FavouritesRepository({required this.remoteDataSource});

  final FavouritesRemoteDataSource remoteDataSource;

  Future<List<String>> getFavouritesIdList() async {
    return remoteDataSource.getFavouritesIdList();
  }

  Future<void> add({
    required String cocktailId,
  }) async {
    remoteDataSource.add(
      cocktailId: cocktailId,
    );
  }

  Future<void> remove({
    required String cocktailId,
  }) async {
    remoteDataSource.remove(
      cocktailId: cocktailId,
    );
  }

  Future<bool> checkFavourite({
    required String cocktailId,
  }) async {
    bool check = await remoteDataSource.checkFavourite(
      cocktailId: cocktailId,
    );
    return check;
  }

  // Future<void> create({
  //   required String cocktailId,
  //   required double value,
  // }) async {
  //   remoteDataSource.create(cocktailId: cocktailId, value: value);
  // }
}
