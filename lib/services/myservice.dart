import 'package:dio/dio.dart';
import 'package:newsreader/core/constants/myapi.dart';
import 'package:newsreader/models/applemodel.dart';

class AppleService {
  static Future getData() async {
    Response res = await Dio().get(AppleAPI.api);
    return AppleModel.fromJson(res.data);
  }
}

// class TeslaService {
//   static Future<News> getData() async {
//     Response res = await Dio().get(TeslaAPI.api);
//     return News.fromJson(res.data);
//   }
// }

// class BussinesService {
//   static Future<News> getData() async {
//     Response res = await Dio().get(BussinesAPI.api);
//     return News.fromJson(res.data);
//   }
// }

// class TechService {
//   static Future<News> getData() async {
//     Response res = await Dio().get(TechAPI.api);
//     return News.fromJson(res.data);
//   }
// }

// class WAllStreetService {
//   static Future<News> getData() async {
//     Response res = await Dio().get(WallStreetAPI.api);
//     return News.fromJson(res.data);
//   }
// }

