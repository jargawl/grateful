
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:thankfulness/models/Widgets/item/item_model.dart';


class FebruaryRepositories {
  Stream<List<ItemModel>> getItemsStream() {
    return FirebaseFirestore.instance.collection('february').snapshots().map(
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
    return FirebaseFirestore.instance.collection('february').doc(id).delete();
  }

  Future<void> add({required String name}) {
    return FirebaseFirestore.instance
        .collection('february')
        .add({'name': name});
  }
}
