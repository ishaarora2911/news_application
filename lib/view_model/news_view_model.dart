import 'dart:convert';
import 'package:news/repository/news_repository.dart';
import 'package:http/http.dart' as http;
import '../models/categories_new_model.dart';
import '../models/news_channel_headlines_model.dart';


class NewsViewModel {

 final _rep=NewsRepository();
 Future<NewsChannelsHeadlinesModel> fetchNewsChannelHeadlinesApi(String channelName) async {

   final response=await _rep.fetchNewsChannelHeadlinesApi(channelName);
   return response;

 }
 Future<CategoriesNewsModel> fetchCategoriesNewsApi( String category) async {

   final response=await _rep.fetchNewsCategoriesApi(category);
   return response;}

}
