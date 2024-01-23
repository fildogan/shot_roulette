// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shot_roulette/app/cubit/root_cubit.dart' as _i4;
import 'package:shot_roulette/app/injection_container.dart' as _i10;
import 'package:shot_roulette/data/remote_data_sources/cocktails_remote_data_source.dart'
    as _i7;
import 'package:shot_roulette/domain/repositories/cocktails_repository.dart'
    as _i8;
import 'package:shot_roulette/features/cocktail_page/cubit/cocktail_page_cubit.dart'
    as _i9;
import 'package:shot_roulette/features/settings_page/cubit/settings_page_cubit.dart'
    as _i5;
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
    gh.factory<_i4.RootCubit>(() => _i4.RootCubit());
    gh.factory<_i5.SettingsPageCubit>(() => _i5.SettingsPageCubit());
    gh.factory<String>(
      () => registerModule.baseUrl,
      instanceName: 'BaseUrl',
    );
    gh.lazySingleton<_i6.Dio>(
        () => registerModule.dio(gh<String>(instanceName: 'BaseUrl')));
    gh.factory<_i7.CocktailsRemoteRetroFitDataSource>(
        () => _i7.CocktailsRemoteRetroFitDataSource(gh<_i6.Dio>()));
    gh.factory<_i8.CocktailsRepository>(() => _i8.CocktailsRepository(
        remoteDataSource: gh<_i7.CocktailsRemoteRetroFitDataSource>()));
    gh.factory<_i9.CocktailPageCubit>(() => _i9.CocktailPageCubit(
        cocktailsRepository: gh<_i8.CocktailsRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i10.RegisterModule {}
