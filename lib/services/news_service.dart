import 'dart:convert';

import 'package:http/http.dart' as http;

import '../constants/api_const.dart';
import '../models/news_model.dart';

class NewsService {
  const NewsService(
    this.client,
  );

  final http.Client client;

  get _getNewsByCountry => null;

  Future<List<NewsModel>?> getNewsByCountry(String countryCode) async {
    try {
      final uri = Uri.parse(ApiConst.countryNews(countryCode));
      final respose = await client.get(uri);
      if (respose.statusCode == 200 || respose.statusCode == 201) {
        final body = jsonDecode(respose.body) as Map<String, dynamic>;
        final news = (body['articles'] as List)
            .map((e) => NewsModel.fromJson(e))
            .toList();
        return news;
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }
}

final newsService = NewsService(http.Client());
