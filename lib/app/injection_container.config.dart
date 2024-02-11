// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i13;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shot_roulette/app/cubit/root_cubit.dart' as _i17;
import 'package:shot_roulette/app/firebase_auth_service.dart' as _i6;
import 'package:shot_roulette/app/injection_container.dart' as _i24;
import 'package:shot_roulette/data/remote_data_sources/auth_remote_data_source.dart'
    as _i11;
import 'package:shot_roulette/data/remote_data_sources/cocktails_remote_data_source.dart'
    as _i20;
import 'package:shot_roulette/data/remote_data_sources/favourites_remote_data_source.dart'
    as _i4;
import 'package:shot_roulette/data/remote_data_sources/filters_remote_data_source.dart'
    as _i14;
import 'package:shot_roulette/data/remote_data_sources/gpt_remote_data_source.dart'
    as _i7;
import 'package:shot_roulette/data/remote_data_sources/ratings_remote_data_source.dart'
    as _i9;
import 'package:shot_roulette/domain/repositories/auth_repository.dart' as _i12;
import 'package:shot_roulette/domain/repositories/cocktails_repository.dart'
    as _i21;
import 'package:shot_roulette/domain/repositories/favourites_repository.dart'
    as _i5;
import 'package:shot_roulette/domain/repositories/filter_repository.dart'
    as _i15;
import 'package:shot_roulette/domain/repositories/gpt_repository.dart' as _i8;
import 'package:shot_roulette/domain/repositories/ratings_repository.dart'
    as _i10;
import 'package:shot_roulette/features/auth/cubit/auth_page_cubit.dart' as _i19;
import 'package:shot_roulette/features/cocktail_page/cubit/cocktail_page_cubit.dart'
    as _i23;
import 'package:shot_roulette/features/cocktail_page/widgets/change_rating_dialog/cubit/change_rating_cubit.dart'
    as _i3;
import 'package:shot_roulette/features/database_page/cubit/database_page_cubit.dart'
    as _i22;
import 'package:shot_roulette/features/log_in/cubit/log_in_cubit.dart' as _i16;
import 'package:shot_roulette/features/settings_page/cubit/settings_page_cubit.dart'
    as _i18;

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
    gh.factory<_i6.FirebaseAuthService>(() => _i6.FirebaseAuthService());
    gh.factory<_i7.GPTRemoteDataSource>(() => _i7.GPTRemoteDataSource());
    gh.factory<_i8.GPTRepository>(() =>
        _i8.GPTRepository(remoteDataSource: gh<_i7.GPTRemoteDataSource>()));
    gh.factory<_i9.RatingsRemoteDataSource>(
        () => _i9.RatingsRemoteDataSource());
    gh.factory<_i10.RatingsRepository>(() => _i10.RatingsRepository(
        remoteDataSource: gh<_i9.RatingsRemoteDataSource>()));
    gh.factory<String>(
      () => registerModule.baseUrl,
      instanceName: 'BaseUrl',
    );
    gh.factory<_i11.AuthRemoteDataSource>(() => _i11.AuthRemoteDataSource(
        firebaseAuthService: gh<_i6.FirebaseAuthService>()));
    gh.factory<_i12.AuthRepository>(() => _i12.AuthRepository(
        authRemoteDataSource: gh<_i11.AuthRemoteDataSource>()));
    gh.lazySingleton<_i13.Dio>(
        () => registerModule.dio(gh<String>(instanceName: 'BaseUrl')));
    gh.factory<_i14.FiltersRemoteRetroFitDataSource>(
        () => _i14.FiltersRemoteRetroFitDataSource(gh<_i13.Dio>()));
    gh.factory<_i15.FiltersRepository>(() => _i15.FiltersRepository(
        remoteDataSource: gh<_i14.FiltersRemoteRetroFitDataSource>()));
    gh.factory<_i16.LogInCubit>(
        () => _i16.LogInCubit(authRepository: gh<_i12.AuthRepository>()));
    gh.factory<_i17.RootCubit>(
        () => _i17.RootCubit(authRepository: gh<_i12.AuthRepository>()));
    gh.factory<_i18.SettingsPageCubit>(() =>
        _i18.SettingsPageCubit(authRepository: gh<_i12.AuthRepository>()));
    gh.factory<_i19.AuthPageCubit>(() => _i19.AuthPageCubit(
          authRepository: gh<_i12.AuthRepository>(),
          gptRepository: gh<_i8.GPTRepository>(),
        ));
    gh.factory<_i20.CocktailsRemoteRetroFitDataSource>(
        () => _i20.CocktailsRemoteRetroFitDataSource(gh<_i13.Dio>()));
    gh.factory<_i21.CocktailsRepository>(() => _i21.CocktailsRepository(
        remoteDataSource: gh<_i20.CocktailsRemoteRetroFitDataSource>()));
    gh.factory<_i22.DatabasePageCubit>(() => _i22.DatabasePageCubit(
          filtersRepository: gh<_i15.FiltersRepository>(),
          cocktailsRepository: gh<_i21.CocktailsRepository>(),
          favouritesRepository: gh<_i5.FavouritesRepository>(),
        ));
    gh.factory<_i23.CocktailPageCubit>(() => _i23.CocktailPageCubit(
          cocktailsRepository: gh<_i21.CocktailsRepository>(),
          ratingsRepository: gh<_i10.RatingsRepository>(),
          favouritesRepository: gh<_i5.FavouritesRepository>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i24.RegisterModule {}
