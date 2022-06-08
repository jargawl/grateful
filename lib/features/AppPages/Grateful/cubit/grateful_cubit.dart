import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:thankfulness/App/core/enums.dart';
import 'package:thankfulness/repositories/grateful_repositories.dart';
import '../../../../models/Widgets/item/item_model.dart';

part 'grateful_state.dart';

@injectable
class GratefulCubit extends Cubit<GratefulState> {
  GratefulCubit({required this.gratefulRepositories})
      : super(
          const GratefulState(
            documents: [],
            errorMessage: '',
            status: Status.initial,
          ),
        );
  StreamSubscription? _streamSubscription;
  final GratefulRepositories gratefulRepositories;

  Future<void> start() async {
    emit(
      const GratefulState(
        documents: [],
        errorMessage: '',
        status: Status.loading,
      ),
    );
    _streamSubscription = gratefulRepositories.getItemsStream().listen(
      (data) {
        emit(
          GratefulState(
            documents: data,
            status: Status.success,
            errorMessage: '',
          ),
        );
      },
    )..onError(
        (error) {
          GratefulState(
            documents: const [],
            status: Status.error,
            errorMessage: error.toString(),
          );
        },
      );
  }

  Future<void> delete({
    required document,
    required id,
  }) async {
    await gratefulRepositories.delete(id: document.id);
  }

  Future<void> add({
    required String name,
  }) async {
    gratefulRepositories.add(name: name);
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
