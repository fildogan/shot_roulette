// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shot_roulette/app/cubit/root_cubit.dart' as _i7;
import 'package:shot_roulette/app/injection_container.dart' as _i13;
import 'package:shot_roulette/data/remote_data_sources/cocktails_remote_data_source.dart'
    as _i10;
import 'package:shot_roulette/data/remote_data_sources/ratings_remote_data_source.dart'
    as _i5;
import 'package:shot_roulette/domain/repositories/cocktails_repository.dart'
    as _i11;
import 'package:shot_roulette/domain/repositories/ratings_repository.dart'
    as _i6;
import 'package:shot_roulette/features/cocktail_page/cubit/cocktail_page_cubit.dart'
    as _i12;
import 'package:shot_roulette/features/cocktail_page/widgets/change_rating_dialog/cubit/change_rating_cubit.dart'
    as _i3;
import 'package:shot_roulette/features/settings_page/cubit/settings_page_cubit.dart'
    as _i8;
import 'package:shot_roulette/features/settings_page/pages/log_in/cubit/log_in_cubit.dart'
    as _i4;

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
    gh.factory<_i4.LogInCubit>(() => _i4.LogInCubit());
    gh.factory<_i5.RatingsRemoteDataSource>(
        () => _i5.RatingsRemoteDataSource());
    gh.factory<_i6.RatingsRepository>(() => _i6.RatingsRepository(
        remoteDataSource: gh<_i5.RatingsRemoteDataSource>()));
    gh.factory<_i7.RootCubit>(() => _i7.RootCubit());
    gh.factory<_i8.SettingsPageCubit>(() => _i8.SettingsPageCubit());
    gh.factory<String>(
      () => registerModule.baseUrl,
      instanceName: 'BaseUrl',
    );
    gh.lazySingleton<_i9.Dio>(
        () => registerModule.dio(gh<String>(instanceName: 'BaseUrl')));
    gh.factory<_i10.CocktailsRemoteRetroFitDataSource>(
        () => _i10.CocktailsRemoteRetroFitDataSource(gh<_i9.Dio>()));
    gh.factory<_i11.CocktailsRepository>(() => _i11.CocktailsRepository(
        remoteDataSource: gh<_i10.CocktailsRemoteRetroFitDataSource>()));
    gh.factory<_i12.CocktailPageCubit>(() => _i12.CocktailPageCubit(
          cocktailsRepository: gh<_i11.CocktailsRepository>(),
          ratingsRepository: gh<_i6.RatingsRepository>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i13.RegisterModule {}
