import 'package:flutter_test/flutter_test.dart';
import 'package:thankfulness/features/AppPages/Grateful/cubit/grateful_cubit.dart';
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
}
