import 'dart:convert';

class NewsModel {
const  NewsModel(
      {this.author,
      required this.title,
      required this.description,
      required this.publishedAt,
      this.urlToImage,
      this.content});


  final String? author;
  final String title;
  final String description;
  final String? urlToImage;
  final String publishedAt;
  final String? content;


  factory NewsModel.fromJson(Map<String, dynamic> json) {
    return NewsModel(
    author: json['author'] != null ? json['author'] as String : null,
    title: json['title'] ,
    description: json['description'] as String,
    urlToImage: json['urlToImage'] != null ? json['urlToImage'] as String : null,
    // publishedAt: json['publishedAt'] as String,
    // content: json['content'] != null ? json['content'] as String : null,
    publishedAt: json['publishedAt'] ?? '',
    content: json['content'],
    );
  }

}
