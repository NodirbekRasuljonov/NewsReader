class AppleAPI {
  static String api =
      'https://newsapi.org/v2/everything?q=apple&from=2022-03-10&to=2022-03-10&sortBy=popularity';
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
