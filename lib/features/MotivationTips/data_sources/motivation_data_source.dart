import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:thankfulness/features/MotivationTips/model/motivation_model.dart';
part 'motivation_data_source.g.dart';

@injectable
@RestApi()
abstract class MotivationRemoteRetrofitDataSource {
  @factoryMethod
  factory MotivationRemoteRetrofitDataSource(Dio dio) = _MotivationRemoteRetrofitDataSource;

  @GET("/gratitude")
  Future<List<MotivationModel>> getMotivation();
}