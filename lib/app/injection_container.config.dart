// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i12;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shot_roulette/app/cubit/root_cubit.dart' as _i16;
import 'package:shot_roulette/app/firebase_auth_service.dart' as _i7;
import 'package:shot_roulette/app/injection_container.dart' as _i22;
import 'package:shot_roulette/data/remote_data_sources/auth_remote_data_source.dart'
    as _i10;
import 'package:shot_roulette/data/remote_data_sources/cocktails_remote_data_source.dart'
    as _i18;
import 'package:shot_roulette/data/remote_data_sources/favourites_remote_data_source.dart'
    as _i5;
import 'package:shot_roulette/data/remote_data_sources/filters_remote_data_source.dart'
    as _i13;
import 'package:shot_roulette/data/remote_data_sources/ratings_remote_data_source.dart'
    as _i8;
import 'package:shot_roulette/domain/repositories/auth_repository.dart' as _i11;
import 'package:shot_roulette/domain/repositories/cocktails_repository.dart'
    as _i19;
import 'package:shot_roulette/domain/repositories/favourites_repository.dart'
    as _i6;
import 'package:shot_roulette/domain/repositories/filter_repository.dart'
    as _i14;
import 'package:shot_roulette/domain/repositories/ratings_repository.dart'
    as _i9;
import 'package:shot_roulette/features/auth/cubit/auth_page_cubit.dart' as _i3;
import 'package:shot_roulette/features/cocktail_page/cubit/cocktail_page_cubit.dart'
    as _i21;
import 'package:shot_roulette/features/cocktail_page/widgets/change_rating_dialog/cubit/change_rating_cubit.dart'
    as _i4;
import 'package:shot_roulette/features/database_page/cubit/database_page_cubit.dart'
    as _i20;
import 'package:shot_roulette/features/settings_page/cubit/settings_page_cubit.dart'
    as _i17;
import 'package:shot_roulette/features/settings_page/pages/log_in/cubit/log_in_cubit.dart'
    as _i15;

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
    gh.factory<_i3.AuthPageCubit>(() => _i3.AuthPageCubit());
    gh.factory<_i4.ChangeRatingCubit>(() => _i4.ChangeRatingCubit());
    gh.factory<_i5.FavouritesRemoteDataSource>(
        () => _i5.FavouritesRemoteDataSource());
    gh.factory<_i6.FavouritesRepository>(() => _i6.FavouritesRepository(
        remoteDataSource: gh<_i5.FavouritesRemoteDataSource>()));
    gh.factory<_i7.FirebaseAuthService>(() => _i7.FirebaseAuthService());
    gh.factory<_i8.RatingsRemoteDataSource>(
        () => _i8.RatingsRemoteDataSource());
    gh.factory<_i9.RatingsRepository>(() => _i9.RatingsRepository(
        remoteDataSource: gh<_i8.RatingsRemoteDataSource>()));
    gh.factory<String>(
      () => registerModule.baseUrl,
      instanceName: 'BaseUrl',
    );
    gh.factory<_i10.AuthRemoteDataSource>(() => _i10.AuthRemoteDataSource(
        firebaseAuthService: gh<_i7.FirebaseAuthService>()));
    gh.factory<_i11.AuthRepository>(() => _i11.AuthRepository(
        authRemoteDataSource: gh<_i10.AuthRemoteDataSource>()));
    gh.lazySingleton<_i12.Dio>(
        () => registerModule.dio(gh<String>(instanceName: 'BaseUrl')));
    gh.factory<_i13.FiltersRemoteRetroFitDataSource>(
        () => _i13.FiltersRemoteRetroFitDataSource(gh<_i12.Dio>()));
    gh.factory<_i14.FiltersRepository>(() => _i14.FiltersRepository(
        remoteDataSource: gh<_i13.FiltersRemoteRetroFitDataSource>()));
    gh.factory<_i15.LogInCubit>(
        () => _i15.LogInCubit(authRepository: gh<_i11.AuthRepository>()));
    gh.factory<_i16.RootCubit>(
        () => _i16.RootCubit(authRepository: gh<_i11.AuthRepository>()));
    gh.factory<_i17.SettingsPageCubit>(() =>
        _i17.SettingsPageCubit(authRepository: gh<_i11.AuthRepository>()));
    gh.factory<_i18.CocktailsRemoteRetroFitDataSource>(
        () => _i18.CocktailsRemoteRetroFitDataSource(gh<_i12.Dio>()));
    gh.factory<_i19.CocktailsRepository>(() => _i19.CocktailsRepository(
        remoteDataSource: gh<_i18.CocktailsRemoteRetroFitDataSource>()));
    gh.factory<_i20.DatabasePageCubit>(() => _i20.DatabasePageCubit(
          filtersRepository: gh<_i14.FiltersRepository>(),
          cocktailsRepository: gh<_i19.CocktailsRepository>(),
          favouritesRepository: gh<_i6.FavouritesRepository>(),
        ));
    gh.factory<_i21.CocktailPageCubit>(() => _i21.CocktailPageCubit(
          cocktailsRepository: gh<_i19.CocktailsRepository>(),
          ratingsRepository: gh<_i9.RatingsRepository>(),
          favouritesRepository: gh<_i6.FavouritesRepository>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i22.RegisterModule {}
