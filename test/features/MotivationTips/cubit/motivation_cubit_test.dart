import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:thankfulness/features/MotivationTips/cubit/motivation_cubit.dart';
import 'package:thankfulness/features/MotivationTips/repositories/motivation_repository.dart';
import 'package:mocktail/mocktail.dart';

class MockMotivationRepository extends Mock implements MotivationRepository {}

void main() {
  late MotivationCubit sut;
  late MockMotivationRepository repository;

  setUp(() {
    repository = MockMotivationRepository();
    sut = MotivationCubit(motivationRepository: repository);
  });
  group('start', () {
    blocTest<MotivationCubit, MotivationState>(
      'description',
      build: () => sut,
      act: (cubit) => cubit.start(),
      expect: () => [],
    );
  });
}
