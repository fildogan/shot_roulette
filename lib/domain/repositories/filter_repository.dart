import 'package:injectable/injectable.dart';
import 'package:shot_roulette/data/remote_data_sources/filters_remote_data_source.dart';
import 'package:shot_roulette/domain/responses/filter_list_response.dart';

@injectable
class FiltersRepository {
  FiltersRepository({required this.remoteDataSource});

  final FiltersRemoteRetroFitDataSource remoteDataSource;

  Future<FilterListResponse> getFilterList(String letter) async {
    return remoteDataSource.getFilterListResponse(letter: letter);
  }
}
