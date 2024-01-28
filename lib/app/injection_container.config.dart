// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i11;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shot_roulette/app/cubit/root_cubit.dart' as _i9;
import 'package:shot_roulette/app/injection_container.dart' as _i18;
import 'package:shot_roulette/data/remote_data_sources/cocktails_remote_data_source.dart'
    as _i14;
import 'package:shot_roulette/data/remote_data_sources/favourites_remote_data_source.dart'
    as _i4;
import 'package:shot_roulette/data/remote_data_sources/filters_remote_data_source.dart'
    as _i12;
import 'package:shot_roulette/data/remote_data_sources/ratings_remote_data_source.dart'
    as _i7;
import 'package:shot_roulette/domain/repositories/cocktails_repository.dart'
    as _i15;
import 'package:shot_roulette/domain/repositories/favourites_repository.dart'
    as _i5;
import 'package:shot_roulette/domain/repositories/filter_repository.dart'
    as _i13;
import 'package:shot_roulette/domain/repositories/ratings_repository.dart'
    as _i8;
import 'package:shot_roulette/features/cocktail_page/cubit/cocktail_page_cubit.dart'
    as _i17;
import 'package:shot_roulette/features/cocktail_page/widgets/change_rating_dialog/cubit/change_rating_cubit.dart'
    as _i3;
import 'package:shot_roulette/features/database_page/cubit/database_page_cubit.dart'
    as _i16;
import 'package:shot_roulette/features/settings_page/cubit/settings_page_cubit.dart'
    as _i10;
import 'package:shot_roulette/features/settings_page/pages/log_in/cubit/log_in_cubit.dart'
    as _i6;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i3.ChangeRatingCubit>(() => _i3.ChangeRatingCubit());
    gh.factory<_i4.FavouritesRemoteDataSource>(
        () => _i4.FavouritesRemoteDataSource());
    gh.factory<_i5.FavouritesRepository>(() => _i5.FavouritesRepository(
        remoteDataSource: gh<_i4.FavouritesRemoteDataSource>()));
    gh.factory<_i6.LogInCubit>(() => _i6.LogInCubit());
    gh.factory<_i7.RatingsRemoteDataSource>(
        () => _i7.RatingsRemoteDataSource());
    gh.factory<_i8.RatingsRepository>(() => _i8.RatingsRepository(
        remoteDataSource: gh<_i7.RatingsRemoteDataSource>()));
    gh.factory<_i9.RootCubit>(() => _i9.RootCubit());
    gh.factory<_i10.SettingsPageCubit>(() => _i10.SettingsPageCubit());
    gh.factory<String>(
      () => registerModule.baseUrl,
      instanceName: 'BaseUrl',
    );
    gh.lazySingleton<_i11.Dio>(
        () => registerModule.dio(gh<String>(instanceName: 'BaseUrl')));
    gh.factory<_i12.FiltersRemoteRetroFitDataSource>(
        () => _i12.FiltersRemoteRetroFitDataSource(gh<_i11.Dio>()));
    gh.factory<_i13.FiltersRepository>(() => _i13.FiltersRepository(
        remoteDataSource: gh<_i12.FiltersRemoteRetroFitDataSource>()));
    gh.factory<_i14.CocktailsRemoteRetroFitDataSource>(
        () => _i14.CocktailsRemoteRetroFitDataSource(gh<_i11.Dio>()));
    gh.factory<_i15.CocktailsRepository>(() => _i15.CocktailsRepository(
        remoteDataSource: gh<_i14.CocktailsRemoteRetroFitDataSource>()));
    gh.factory<_i16.DatabasePageCubit>(() => _i16.DatabasePageCubit(
          filtersRepository: gh<_i13.FiltersRepository>(),
          cocktailsRepository: gh<_i15.CocktailsRepository>(),
          favouritesRepository: gh<_i5.FavouritesRepository>(),
        ));
    gh.factory<_i17.CocktailPageCubit>(() => _i17.CocktailPageCubit(
          cocktailsRepository: gh<_i15.CocktailsRepository>(),
          ratingsRepository: gh<_i8.RatingsRepository>(),
          favouritesRepository: gh<_i5.FavouritesRepository>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i18.RegisterModule {}
