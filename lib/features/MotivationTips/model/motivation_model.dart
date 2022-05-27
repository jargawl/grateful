class MotivationModel {
  const MotivationModel({
    required this.id,
    required this.contents,
    required this.name,
  });

  final int id;
  final String contents;
  final String name;

  MotivationModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        contents = json['contents'],
        name = json['name'];
}