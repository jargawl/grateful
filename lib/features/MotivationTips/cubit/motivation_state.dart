part of 'motivation_cubit.dart';

@freezed
class MotivationState with _$MotivationState {
  factory MotivationState({
    @Default([]) List<MotivationModel> results,
    @Default(Status.initial) Status status,
    String? errorMessage,
  }) = _MotivationState;
}
