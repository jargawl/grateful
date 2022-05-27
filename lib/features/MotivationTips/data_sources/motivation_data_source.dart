import 'package:dio/dio.dart';

class MotivationMockedDataSource {
  Future<List<Map<String, dynamic>>?> getMotivation() async {
    return [
      {
        'id': 1,
        'contents': 'aaa',
        'name': 'Iwona',
      },
    ];
  }
}


class MotivationRemoteDioDataSource {
  Future<List<Map<String, dynamic>>?> getMotivation() async {
    final response = await Dio().get<List<dynamic>>(
        'http://my-json-server.typicode.com/iwonarudzinska/citationsjson/citations');
    final listDynamic = response.data;
    if (listDynamic == null) {
      return null;
    }
    return listDynamic.map((e) => e as Map<String, dynamic>).toList();
  }
}