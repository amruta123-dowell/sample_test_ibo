import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/models/get_movie_model.dart';
import 'package:flutter_application_1/data/models/get_movie_model.dart';

class ApiClient {
  Future<List<GetMovieModel>> movieGetAPI() async {
    final dio = Dio();
    List<GetMovieModel> list = [];
    try {
      var response = await dio.get(
          "https://www.whats-on-netflix.com/wp-content/plugins/whats-on-netflix/json/alldocs.json?_=1700718031139");
      if (response.statusCode == 200) {
        list = (response.data as List)
            .map((ele) => GetMovieModel.fromJson(ele))
            .toList();

        return list;
      } else {
        throw "API error";
      }
    } catch (error) {
      print(error);
    }
    throw "error";
  }
}
