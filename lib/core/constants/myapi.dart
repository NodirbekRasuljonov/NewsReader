class AppleAPI {

  static String api =
      'https://newsapi.org/v2/everything?q=apple&from=2022-03-12&to=2022-03-12&sortBy=popularity&apiKey=7b78521612094b3cb95adb582a5a5719';
}

class TeslaAPI {
  static String api =
      'https://newsapi.org/v2/everything?q=tesla&from=2022-02-11&sortBy=publishedAt';
}

class BussinesAPI {
  static String api =
      'https://newsapi.org/v2/top-headlines?country=us&category=business';
}

class TechAPI {
  static String api = 'https://newsapi.org/v2/top-headlines?sources=techcrunch';
}

class WallStreetAPI {
  static String api = 'https://newsapi.org/v2/everything?domains=wsj.com';
}
