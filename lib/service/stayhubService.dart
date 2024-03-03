// ignore_for_file: file_names

import 'package:dio/dio.dart';
import 'package:stayhub_api/model/datamodel.dart';

class ApiService {
  Dio dio = Dio();
  final String url =
      "https://Stayhub-backend-yzyl.onrender.com/api/data/listings";

  Future<List<DataModel>> fetchdata() async {
    final response = await dio.get(url);
    try {
      if (response.statusCode == 200) {
        var data = response.data;
        List datalist = data["data"];
        return datalist.map((e) => DataModel.fromJson(e)).toList();
      } else {
        throw Exception("fetch error");
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
