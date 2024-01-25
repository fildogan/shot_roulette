import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'package:retrofit/retrofit.dart';
import 'package:shot_roulette/domain/responses/filter_list_response.dart';

part 'filters_remote_data_source.g.dart';

@injectable
@RestApi()
abstract class FiltersRemoteRetroFitDataSource {
  @factoryMethod
  factory FiltersRemoteRetroFitDataSource(
    Dio dio,
  ) = _FiltersRemoteRetroFitDataSource;

  @GET('/list.php?{letter}=list')
  Future<FilterListResponse> getFilterListResponse(
      {@Path('letter') required String letter});
}
