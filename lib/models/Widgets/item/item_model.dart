class ItemModel {
  ItemModel({
    required this.id,
    required this.name,
  });

  final String name;
  final String id;

  ItemModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'];
}
