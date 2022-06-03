import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:thankfulness/App/core/enums.dart';
import 'package:thankfulness/features/MotivationTips/cubit/motivation_cubit.dart';
import 'package:thankfulness/features/MotivationTips/model/motivation_model.dart';
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
    setUp(() {
      when(() => repository.getMotivationModels()).thenAnswer(
        (_) async => [
          MotivationModel(
              1,
              'Życie to bezcenny dar, który otrzymałeś i powinieneś być za niego wdzięczny',
              'Twoje życie'),
          MotivationModel(
              2,
              'Każdy dzień kiedy dopisuje Ci zdrowie jest cenny. Doceniaj swoje ciało, swoją sprawność. Wiele osób, zaczyna myśleć o wartości zdrowia dopiero, gdy je stracą i dopada ich choroba.',
              'Dobre zdrowie'),
          MotivationModel(
              3,
              'Jeśli masz w życiu osoby, które możesz nazwać swoimi przyjaciółmi to jest bardzo cenne.',
              'Przyjaciele'),
        ],
      );
    });

    blocTest<MotivationCubit, MotivationState>(
      'emits status.loading then Status.success with results ',
      build: () => sut,
      act: (cubit) => cubit.start(),
      expect: () => [
        MotivationState(
          status: Status.loading,
        ),
        MotivationState(
          status: Status.success,
          results: [
            MotivationModel(
                1,
                'Życie to bezcenny dar, który otrzymałeś i powinieneś być za niego wdzięczny',
                'Twoje życie'),
            MotivationModel(
                2,
                'Każdy dzień kiedy dopisuje Ci zdrowie jest cenny. Doceniaj swoje ciało, swoją sprawność. Wiele osób, zaczyna myśleć o wartości zdrowia dopiero, gdy je stracą i dopada ich choroba.',
                'Dobre zdrowie'),
            MotivationModel(
                3,
                'Jeśli masz w życiu osoby, które możesz nazwać swoimi przyjaciółmi to jest bardzo cenne.',
                'Przyjaciele'),
          ],
        )
      ],
    );
  });
}
