part of 'motivation_cubit.dart';

@immutable
class MotivationState {
  const MotivationState(
      {this.results = const [],
      this.status = Status.initial,
      this.errorMessage});

  final List<MotivationModel> results;
  final Status status;
  final String? errorMessage;
}


