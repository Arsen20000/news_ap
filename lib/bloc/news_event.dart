part of 'news_bloc.dart';

abstract class NewsEvent extends Equatable {
  NewsEvent();
  @override
  List<Object> get props => [];
}

class Equatable {}

class NewsByCountryCodeEvent extends NewsEvent {
  NewsByCountryCodeEvent({this.countryCode = 'us'});

  final String countryCode;
}
