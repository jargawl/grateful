
import 'package:thankfulness/features/MotivationTips/data_sources/motivation_data_source.dart';
import 'package:thankfulness/features/MotivationTips/model/motivation_model.dart';


class MotivationRepository {
  MotivationRepository({required this.remoteDataSource});

  final MotivationRemoteDioDataSource remoteDataSource;
  Future<List<MotivationModel>> getMotivationModels() async {
    final json = await remoteDataSource.getMotivation();
    if (json == null) {
      return [];
    }
    return json.map((item) => MotivationModel.fromJson(item)).toList();
  }
}