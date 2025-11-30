import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news/api/model/response/articles/ArticlesResponse.dart';

import 'model/response/sources/SourceResponse.dart';
class ApiManager {
  static const String _baseUrl="newsapi.org";
  static const String _sourcesApi="v2/top-headlines/sources";
  static const String _articlesApi="v2/everything";
  static const String _apiKey="be0c47922d25445085d6f79f8ebad782";
  ApiManager._();

  static ApiManager? _instance;
  static ApiManager getInstance() {
    _instance ??= ApiManager._();
    return _instance!;
  }
  Future<SourcesResponse> getNewsSources(String category)async{
    var params = {
      "category":category
    };
    var headers ={
      "Authorization":_apiKey
    };
   var uri=Uri.https(_baseUrl,_sourcesApi,params);
   var respone= await http.get(uri,headers: headers);
   print("sources Api ${respone.statusCode}");
    print("sources Api ${respone.body}");
    var json=jsonDecode(respone.body);
    SourcesResponse sourcesResponse=SourcesResponse.fromJson(json);
    return sourcesResponse;
  }
  Future<ArticlesResponse> getArticles(String sourceId)async{
    var params = {
      "sources":sourceId
    };
    var headers ={
      "Authorization":_apiKey
    };
    var uri=Uri.https(_baseUrl,_articlesApi,params);
    var respone= await http.get(uri,headers: headers);
    print("sources Api ${respone.statusCode}");
    print("sources Api ${respone.body}");
    var json=jsonDecode(respone.body);
    ArticlesResponse articlesResponse=ArticlesResponse.fromJson(json);
    return articlesResponse;
  }
}
