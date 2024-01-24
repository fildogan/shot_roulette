// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shot_roulette/app/cubit/root_cubit.dart' as _i6;
import 'package:shot_roulette/app/injection_container.dart' as _i12;
import 'package:shot_roulette/data/remote_data_sources/cocktails_remote_data_source.dart'
    as _i9;
import 'package:shot_roulette/data/remote_data_sources/ratings_remote_data_source.dart'
    as _i4;
import 'package:shot_roulette/domain/repositories/cocktails_repository.dart'
    as _i10;
import 'package:shot_roulette/domain/repositories/ratings_repository.dart'
    as _i5;
import 'package:shot_roulette/features/cocktail_page/cubit/cocktail_page_cubit.dart'
    as _i11;
import 'package:shot_roulette/features/settings_page/cubit/settings_page_cubit.dart'
    as _i7;
import 'package:shot_roulette/features/settings_page/pages/log_in/cubit/log_in_cubit.dart'
    as _i3;

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
    gh.factory<_i3.LogInCubit>(() => _i3.LogInCubit());
    gh.factory<_i4.RatingsRemoteDataSource>(
        () => _i4.RatingsRemoteDataSource());
    gh.factory<_i5.RatingsRepository>(() => _i5.RatingsRepository(
        remoteDataSource: gh<_i4.RatingsRemoteDataSource>()));
    gh.factory<_i6.RootCubit>(() => _i6.RootCubit());
    gh.factory<_i7.SettingsPageCubit>(() => _i7.SettingsPageCubit());
    gh.factory<String>(
      () => registerModule.baseUrl,
      instanceName: 'BaseUrl',
    );
    gh.lazySingleton<_i8.Dio>(
        () => registerModule.dio(gh<String>(instanceName: 'BaseUrl')));
    gh.factory<_i9.CocktailsRemoteRetroFitDataSource>(
        () => _i9.CocktailsRemoteRetroFitDataSource(gh<_i8.Dio>()));
    gh.factory<_i10.CocktailsRepository>(() => _i10.CocktailsRepository(
        remoteDataSource: gh<_i9.CocktailsRemoteRetroFitDataSource>()));
    gh.factory<_i11.CocktailPageCubit>(() => _i11.CocktailPageCubit(
          cocktailsRepository: gh<_i10.CocktailsRepository>(),
          ratingsRepository: gh<_i5.RatingsRepository>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i12.RegisterModule {}
