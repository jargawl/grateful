import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:thankfulness/features/MotivationTips/model/motivation_model.dart';
part 'motivation_data_source.g.dart';

@RestApi(baseUrl: "http://my-json-server.typicode.com/iwonarudzinska/Examples-of-gratitude-json")
abstract class MotivationRemoteRetrofitDataSource {
  factory MotivationRemoteRetrofitDataSource(Dio dio, {String baseUrl}) = _MotivationRemoteRetrofitDataSource;

  @GET("/gratitude")
  Future<List<MotivationModel>> getMotivation();
}