import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/news_model.dart';
import '../services/news_service.dart';
import '../bloc/news_bloc.dart';
import '../components/loading_wiget.dart';
import '../components/error_widget.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsBloc(newsService)..add(NewsByCountryCodeEvent()),
      child:const NewsView(),
    );
  }
}

class NewsView extends StatelessWidget {
  const NewsView({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('NewsView'),
        ),
        body: BlocBuilder<NewsBloc, NewsState>(
          builder: (context, state) {
          if (state is NewsLoading) {
            return const LoadingWidget();
          } else if (state is NewsSacces) {
            return NewsSaccesWiget(state.news);
          } else if (state is NewsError) {
            return ErrorWiget(state.text);
          } else {
            return const ErrorWiget('belgisiz kata stete');
          }
        }
      )
    );
  }
}

class NewsSaccesWiget extends StatelessWidget {
  const NewsSaccesWiget(this.news, {super.key});

  final List<NewsModel> news;

  @override
  Widget build(
    BuildContext context,) {
    return ListView.builder(
        itemCount: news.length,
        itemBuilder: (BuildContext context, int index) {
          final newsItem = news[index];
          return Card(
            child: ListTile(
              title: Text(newsItem.title),
            ),
          );
        });
  }
}
