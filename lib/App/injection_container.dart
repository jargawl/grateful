import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:thankfulness/App/injection_container.config.dart';
import 'package:thankfulness/features/MotivationTips/cubit/motivation_cubit.dart';
import 'package:thankfulness/features/MotivationTips/data_sources/motivation_data_source.dart';
import 'package:thankfulness/features/MotivationTips/repositories/motivation_repository.dart';

final getIt = GetIt.instance;


  
@InjectableInit()  
void configureDependencies() => $initGetIt(getIt);

@module  
abstract class RegisterModule {  

  @Named("BaseUrl")  
  String get baseUrl => 'http://my-json-server.typicode.com/iwonarudzinska/Examples-of-gratitude-json';  
  

  @lazySingleton  
  Dio dio(@Named('BaseUrl') String url) => Dio(BaseOptions(baseUrl: url));  
  
}

// void configureDependencies() {
//   getIt.registerFactory(() => MotivationCubit(motivationRepository: getIt()));
//   getIt.registerFactory(() => MotivationRepository(remoteDataSource: getIt()));
//   getIt.registerFactory(() => MotivationRemoteRetrofitDataSource(Dio()));
// }
