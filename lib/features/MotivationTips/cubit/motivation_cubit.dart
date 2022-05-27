import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:thankfulness/App/core/enums.dart';
import 'package:thankfulness/features/MotivationTips/model/motivation_model.dart';
import 'package:thankfulness/features/MotivationTips/repositories/motivation_repository.dart';


part 'motivation_state.dart';

class MotivationCubit extends Cubit<MotivationState> {
  MotivationCubit({required this.motivationRepository}) : super(const MotivationState());

  final MotivationRepository motivationRepository;

  Future<void> start() async {
    emit(
     const MotivationState(
        status: Status.loading,
      ),
    );
    try {
      final results = await motivationRepository.getMotivationModels();
      emit(MotivationState(
        status: Status.success,
        results: results,
      ));
    } catch (error) {
      emit(
        MotivationState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }
}
