import 'package:firebase_auth/firebase_auth.dart';
import 'package:thankfulness/data/remote_data_sources/goals_remote_data_source.dart';
import 'package:thankfulness/models/Widgets/item/item_model.dart';

class GoalsRepositories {
  GoalsRepositories(this._goalsRemoteDataSource);
  final GoalsRemoteDataSource _goalsRemoteDataSource;

  Stream<List<ItemModel>> getItemsStream() {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      Exception('Jesteś nie zalogowany');
    }
    return _goalsRemoteDataSource.goalsRemoteData().map(
      (querySnapshot) {
        return querySnapshot!.docs.map((doc) {
          return ItemModel(
            name: doc['name'],
            id: doc.id,
          );
        }).toList();
      },
    );
  }

  Future<void> delete({required String id}) {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      Exception('Jesteś nie zalogowany');
    }
    return _goalsRemoteDataSource.delete(id: id);
  }

  Future<void> add({required String name}) {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      Exception('Jesteś nie zalogowany');
    }
    return _goalsRemoteDataSource.add(name: name);
  }

  Future<int?> getCount() async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      Exception('Jesteś nie zalogowany');
    }
    _goalsRemoteDataSource;
    return null;
  }
}
