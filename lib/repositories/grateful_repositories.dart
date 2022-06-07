import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:thankfulness/data/remote_data_sources/grateful_remote_data_source.dart';
import 'package:thankfulness/models/Widgets/item/item_model.dart';

@injectable
class GratefulRepositories {
  GratefulRepositories(this._gratefulRemoteDataSource);
  final GratefulRemoteDataSource _gratefulRemoteDataSource;

  Stream<List<ItemModel>> getItemsStream() {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      Exception('Jesteś nie zalogowany');
    }
    return _gratefulRemoteDataSource.gratefulRemoteData().map(
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
    return _gratefulRemoteDataSource.delete(id: id);
  }

  Future<void> add({required String name}) {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      Exception('Jesteś nie zalogowany');
    }
    return _gratefulRemoteDataSource.add(name: name);
  }

  Future<int?> getCount() async {
    final userID = FirebaseAuth.instance.currentUser?.uid;
    if (userID == null) {
      Exception('Jesteś nie zalogowany');
    }
    _gratefulRemoteDataSource;
    return null;
  }
}
