
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:thankfulness/App/core/enums.dart';
import 'package:thankfulness/features/AppPages/Goals/cubit/goals_cubit.dart';
import 'package:thankfulness/models/Widgets/item/item_model.dart';
import 'package:thankfulness/repositories/goals_repositories.dart';

class MockGoalsRepositories extends Mock implements GoalsRepositories {}

void main() {
  late GoalsCubit sut;
  late MockGoalsRepositories repository;

  setUp(() {
    repository = MockGoalsRepositories();
    sut = GoalsCubit(repository);
  });

  group('start', () {

  
    setUp(() {
      when(() => repository.getItemsStream()).thenThrow(
          ItemModel(id: '1XqL8TfQ8OMOpIPmJ4AyjusTc3B2', name: 'goals'));
    });

    blocTest<GoalsCubit, GoalsState>(
        'emits status loading then status.success with results',
        build: () => sut,
        act: (cubit) => cubit.start(),
        expect: () => [
              const GoalsState(
                documents: [],
                status: Status.loading,
                errorMessage: '',
              ),
              GoalsState(
                status: Status.success,
                errorMessage: '',
                documents: [
                  ItemModel(id: '1XqL8TfQ8OMOpIPmJ4AyjusTc3B2', name: 'goals')
                ],
              ),
            ]);
  });
}