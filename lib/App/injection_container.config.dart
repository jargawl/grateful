// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i11;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../features/AppPages/Goals/cubit/goals_cubit.dart' as _i5;
import '../features/AppPages/Grateful/cubit/grateful_cubit.dart' as _i8;
import '../features/MotivationTips/cubit/motivation_cubit.dart' as _i14;
import '../features/MotivationTips/data_sources/motivation_data_source.dart'
    as _i12;
import '../features/MotivationTips/repositories/motivation_repository.dart'
    as _i13;
import '../models/Widgets/goals/cubit/golas_counter_cubit.dart' as _i3;
import '../models/Widgets/grateful/cubit/grateful_counter_cubit.dart' as _i6;
import '../models/Widgets/motivationButton/cubit/motivationbutton_cubit.dart'
    as _i9;
import '../repositories/goals_repositories.dart' as _i4;
import '../repositories/grateful_repositories.dart' as _i7;
import '../repositories/motivation_repositories.dart' as _i10;
import 'injection_container.dart'
    as _i15; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.GoalsCounterCubit>(
      () => _i3.GoalsCounterCubit(get<_i4.GoalsRepositories>()));
  gh.factory<_i5.GoalsCubit>(
      () => _i5.GoalsCubit(get<_i4.GoalsRepositories>()));
  gh.factory<_i6.GratefulCounterCubit>(
      () => _i6.GratefulCounterCubit(get<_i7.GratefulRepositories>()));
  gh.factory<_i8.GratefulCubit>(
      () => _i8.GratefulCubit(get<_i7.GratefulRepositories>()));
  gh.factory<_i9.MotivationbuttonCubit>(
      () => _i9.MotivationbuttonCubit(get<_i10.MotivationRepositories>()));
  gh.factory<String>(() => registerModule.baseUrl, instanceName: 'BaseUrl');
  gh.lazySingleton<_i11.Dio>(
      () => registerModule.dio(get<String>(instanceName: 'BaseUrl')));
  gh.factory<_i12.MotivationRemoteRetrofitDataSource>(
      () => _i12.MotivationRemoteRetrofitDataSource(get<_i11.Dio>()));
  gh.factory<_i13.MotivationRepository>(() => _i13.MotivationRepository(
      remoteDataSource: get<_i12.MotivationRemoteRetrofitDataSource>()));
  gh.factory<_i14.MotivationCubit>(() => _i14.MotivationCubit(
      motivationRepository: get<_i13.MotivationRepository>()));
  return get;
}

class _$RegisterModule extends _i15.RegisterModule {}
