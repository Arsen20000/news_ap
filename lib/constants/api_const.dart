class ApiConst {
  // https://newsapi.org/v2/top-headlines?country=us&apiKey=8c7d33a555934a839f1f92ead5c79a88
  static const String apiKey = '8c7d33a555934a839f1f92ead5c79a88';

  static String countryNews(String countryCode) =>
      'https://newsapi.org/v2/top-headlines?country= $countryCode&apiKey=$apiKey';

  static String searchNews(String text) =>
      'https://newsapi.org/v2/everything?q=$text&apiKey';    
}
// "https://media.cnn.com/api/v1/images/stellar/prod/221228201426-02-buffalo-mother-dies-near-home-blizzard.jpg?c=16x9&q=w_800,c_fill",