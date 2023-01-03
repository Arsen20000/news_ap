part of 'news_bloc.dart';

abstract class NewsState extends Equatable {
  NewsState();

  @override
  List<Object> get props => [];
}

class NewsLoading extends NewsState {}

class NewsSacces extends NewsState {
  
  NewsSacces(this.news);
   final List<NewsModel> news;

}

class NewsError extends NewsState {
  NewsError(this.text);
  final String text;
}
