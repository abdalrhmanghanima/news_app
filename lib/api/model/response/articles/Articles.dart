


import '../sources/Sources.dart';

/// source : {"id":"bbc-news","name":"BBC News"}
/// author : null
/// title : "Nigeria's School Kidnapping Crisis"
/// description : "After the kidnapping of hundreds of children, we hear from a Nigerian minister about the difficulties that the government has in providing security to the Nigerian people. The government has declared a nationwide security emergency and ordered the recruitment…"
/// url : "https://www.bbc.co.uk/programmes/w172zssfzwmzpj6"
/// urlToImage : "https://ichef.bbci.co.uk/images/ic/1200x675/p0mkk0gy.jpg"
/// publishedAt : "2025-11-29T14:30:00Z"
/// content : "After the kidnapping of hundreds of children, we hear from a Nigerian minister about the difficulties that the government has in providing security to the Nigerian people. The government has declared… [+615 chars]"

class Article {
  Article({
      this.source, 
      this.author, 
      this.title, 
      this.description, 
      this.url, 
      this.urlToImage, 
      this.publishedAt, 
      this.content,});

  Article.fromJson(dynamic json) {
    source = json['source'] != null ? Source.fromJson(json['source']) : null;
    author = json['author'];
    title = json['title'];
    description = json['description'];
    url = json['url'];
    urlToImage = json['urlToImage'];
    publishedAt = json['publishedAt'];
    content = json['content'];
  }
  Source? source;
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (source != null) {
      map['source'] = source?.toJson();
    }
    map['author'] = author;
    map['title'] = title;
    map['description'] = description;
    map['url'] = url;
    map['urlToImage'] = urlToImage;
    map['publishedAt'] = publishedAt;
    map['content'] = content;
    return map;
  }

}