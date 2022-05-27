
import 'package:injectable/injectable.dart';
import 'package:thankfulness/features/MotivationTips/data_sources/motivation_data_source.dart';
import 'package:thankfulness/features/MotivationTips/model/motivation_model.dart';

@injectable
class MotivationRepository {
  MotivationRepository({required this.remoteDataSource});

  final MotivationRemoteRetrofitDataSource remoteDataSource;
  Future<List<MotivationModel>> getMotivationModels() async {
    return remoteDataSource.getMotivation();
  }
}