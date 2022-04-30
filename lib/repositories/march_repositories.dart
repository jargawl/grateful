import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:thankfulness/models/item_model.dart';


class MarchRepositories {
  Stream<List<ItemModel>> getItemsStream() {
    return FirebaseFirestore.instance.collection('march').snapshots().map(
      (querySnapshot) {
        return querySnapshot.docs.map((doc) {
          return ItemModel(
            name: doc['name'],
            id: doc.id,
          );
        }).toList();
      },
    );
  }

  Future<void> delete({required String id}) {
    return FirebaseFirestore.instance.collection('march').doc(id).delete();
  }

  Future<void> add({required String name}) {
    return FirebaseFirestore.instance
        .collection('march')
        .add({'name': name});
  }
}
