import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:thankfulness/App/core/enums.dart';
import 'package:thankfulness/features/AppPages/Grateful/cubit/grateful_cubit.dart';
import 'package:thankfulness/models/Widgets/item/item_model.dart';
import 'package:thankfulness/repositories/grateful_repositories.dart';
import 'package:mocktail/mocktail.dart';

class MockGratefulRepositories extends Mock implements GratefulRepositories {}

void main() {
  late GratefulCubit sut;
  late MockGratefulRepositories repository;

  setUp(() {
    repository = MockGratefulRepositories();
    sut = GratefulCubit(gratefulRepositories: repository);
  });

  group('start', () {
    setUp(() {
      when(() => repository.getItemsStream()).thenThrow(
        (_) async => [
          ItemModel(id: '1XqL8TfQ8OMOpIPmJ4AyjusTc3B2', name: 'goals'),
          ItemModel(id: '8xYFRXJ33QO5GBdhjO3BpwfIRus1', name: 'grateful'),
          ItemModel(id: '9onDyRlETmONJ9r0Q5Kp3t4mMOp1', name: 'goals'),
        ],
      );
    });

    blocTest<GratefulCubit, GratefulState>(
      'emits Status.loading then Status.success with documents',
      build: () => sut,
      act: (cubit) => cubit.start(),
      expect: () => [
        const GratefulState(
          documents: [],
          errorMessage: '',
          status: Status.loading,
        ),
        GratefulState(
          documents: [
            ItemModel(id: '1XqL8TfQ8OMOpIPmJ4AyjusTc3B2', name: 'goals'),
            ItemModel(id: '8xYFRXJ33QO5GBdhjO3BpwfIRus1', name: 'grateful'),
            ItemModel(id: '9onDyRlETmONJ9r0Q5Kp3t4mMOp1', name: 'goals'),
          ],
          status: Status.success,
          errorMessage: '',
        ),
      ],
    );
  });
}
