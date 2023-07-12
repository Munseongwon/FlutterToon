// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:webtoon/models/webtoon_detail_model.dart';
import 'package:webtoon/models/webtoon_epsiodes_model.dart';
import 'package:webtoon/models/webtoon_model.dart';

class ApiServices {
  static const String baseUrl =
      "https://webtoon-crawler.nomadcoders.workers.dev/";
  static const String today = "today";

  static Future<List<WebtoonModel>> getToodaysToons() async {
    List<WebtoonModel> webtoonInstances = [];
    final url = Uri.parse('$baseUrl$today');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final webtoons = jsonDecode(response.body);
      for (var webtoon in webtoons) {
        final instance = WebtoonModel.fromJson(webtoon);
        webtoonInstances.add(instance);
      }
      return webtoonInstances;
    }
    throw Error();
  }

  static Future<WebtoonDetailModel> getToonById(String id) async {
    final url = Uri.parse("$baseUrl$id");
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final webtoon = jsonDecode(response.body);
      return WebtoonDetailModel.fromJson(webtoon);
    }
    throw Error();
  }

  static Future<List<WebtoonEpsiodeModel>> getLatestEpisodesById(
      String id) async {
    List<WebtoonEpsiodeModel> episodesInstances = [];
    final url = Uri.parse("$baseUrl$id/episodes");
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final episodes = jsonDecode(response.body);
      for (var episode in episodes) {
        episodesInstances.add(WebtoonEpsiodeModel.fromJson(episode));
      }
      return episodesInstances;
    }
    throw Error();
  }
}
