import 'dart:math';

import 'package:dio/dio.dart';

import '../model/artical_model.dart';

class NewsSrvieice {
  final Dio dio=Dio();

  NewsSrvieice();

  Future<List<ArticalModel>> getNews({required String categroy}) async {
    try {
      String apiKey = '15567744fe3b4d34aea4a5d0be463303';
    String baseUrl = 'https://newsapi.org/v2/top-headlines';

    Response response =
    await dio.get('$baseUrl?country=us&apiKey=$apiKey&categroy=$categroy');
    Map<String, dynamic> jsondata = response.data;
    List<dynamic> articles = jsondata['articles'];
    List<ArticalModel> articalList = [];
    for (var artical in articles) {
      ArticalModel articalModel = ArticalModel(
          artical['urlToImage'], artical['title'], artical['description']);
      articles.add(articalModel);
    }
      return articalList;
    }
    catch(e){
      return [];
    }


  }


}
