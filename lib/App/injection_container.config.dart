// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/remote_data_sources/goals_remote_data_source.dart' as _i3;
import '../data/remote_data_sources/grateful_remote_data_source.dart' as _i5;
import '../features/AppPages/Goals/cubit/goals_cubit.dart' as _i8;
import '../features/AppPages/Grateful/cubit/grateful_cubit.dart' as _i9;
import '../features/MotivationTips/cubit/motivation_cubit.dart' as _i12;
import '../features/MotivationTips/data_sources/motivation_data_source.dart'
    as _i10;
import '../features/MotivationTips/repositories/motivation_repository.dart'
    as _i11;
import '../repositories/goals_repositories.dart' as _i4;
import '../repositories/grateful_repositories.dart' as _i6;
import 'injection_container.dart'
    as _i13; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.GoalsRemoteDataSource>(() => _i3.GoalsRemoteDataSource());
  gh.factory<_i4.GoalsRepositories>(
      () => _i4.GoalsRepositories(get<_i3.GoalsRemoteDataSource>()));
  gh.factory<_i5.GratefulRemoteDataSource>(
      () => _i5.GratefulRemoteDataSource());
  gh.factory<_i6.GratefulRepositories>(
      () => _i6.GratefulRepositories(get<_i5.GratefulRemoteDataSource>()));
  gh.factory<String>(() => registerModule.baseUrl, instanceName: 'BaseUrl');
  gh.lazySingleton<_i7.Dio>(
      () => registerModule.dio(get<String>(instanceName: 'BaseUrl')));
  gh.factory<_i8.GoalsCubit>(
      () => _i8.GoalsCubit(get<_i4.GoalsRepositories>()));
  gh.factory<_i9.GratefulCubit>(() =>
      _i9.GratefulCubit(gratefulRepositories: get<_i6.GratefulRepositories>()));
  gh.factory<_i10.MotivationRemoteRetrofitDataSource>(
      () => _i10.MotivationRemoteRetrofitDataSource(get<_i7.Dio>()));
  gh.factory<_i11.MotivationRepository>(() => _i11.MotivationRepository(
      remoteDataSource: get<_i10.MotivationRemoteRetrofitDataSource>()));
  gh.factory<_i12.MotivationCubit>(() => _i12.MotivationCubit(
      motivationRepository: get<_i11.MotivationRepository>()));
  return get;
}

class _$RegisterModule extends _i13.RegisterModule {}
