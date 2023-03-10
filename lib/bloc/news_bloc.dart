
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/news_model.dart';
import '../services/news_service.dart';

part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc(this.service) : super(NewsLoading()) {
    on<NewsEvent>((event, emit) {});
      on<NewsByCountryCodeEvent>(_getNewsByCountry);
  }
  final NewsService service;

  Future<void> _getNewsByCountry(
      NewsByCountryCodeEvent event, Emitter<NewsState> emit) async {
    final news = await service.getNewsByCountry(event.countryCode);
    if (news != null){
     emit (NewsSacces(news));
    } else {
    emit (NewsError('bizde kata boldy '));
      }
    }
     
}
