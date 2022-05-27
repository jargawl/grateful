import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:thankfulness/features/MotivationTips/cubit/motivation_cubit.dart';
import 'package:thankfulness/features/MotivationTips/data_sources/motivation_data_source.dart';
import 'package:thankfulness/features/MotivationTips/repositories/motivation_repository.dart';

final getIt = GetIt.instance;

void configureDependencies() {
  getIt.registerFactory(() => MotivationCubit(motivationRepository: getIt()));
  getIt.registerFactory(() => MotivationRepository(remoteDataSource: getIt()));
  getIt.registerFactory(() => MotivationRemoteRetrofitDataSource(Dio()));
}
