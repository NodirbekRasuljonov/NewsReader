import 'package:hive/hive.dart';

part 'applemodel.g.dart';

@HiveType(typeId: 1)
class AppleModel {
  AppleModel({
    this.status,
    this.totalResults,
    this.articles,
  });
  @HiveField(1)
  String? status;
  @HiveField(2)
  int? totalResults;
  @HiveField(3)
  List<Article>? articles;

  factory AppleModel.fromJson(Map<String, dynamic> json) => AppleModel(
        status: json["status"],
        totalResults: json["totalResults"],
        articles: List<Article>.from(
            json["articles"].map((x) => Article.fromJson(x))),
      );

}

@HiveType(typeId: 2)
class Article {
  Article({
    this.source,
    this.author,
    this.title,
    this.description,
    this.url,
    this.urlToImage,
    this.publishedAt,
    this.content,
  });
  @HiveField(1)
  Source? source;
  @HiveField(2)
  String? author;
  @HiveField(3)
  String? title;
  @HiveField(4)
  String? description;
  @HiveField(5)
  String? url;
  @HiveField(6)
  String? urlToImage;
  @HiveField(7)
  DateTime? publishedAt;
  @HiveField(8)
  String? content;

  factory Article.fromJson(Map<String, dynamic> json) => Article(
        source: Source.fromJson(json["source"]),
        author: json["author"] == null ? null : json["author"],
        title: json["title"],
        description: json["description"],
        url: json["url"],
        urlToImage: json["urlToImage"],
        publishedAt: DateTime.parse(json["publishedAt"]),
        content: json["content"],
      );
}

@HiveType(typeId: 3)
class Source {
  Source({
    this.id,
    this.name,
  });
  @HiveField(1)
  String? id;
  @HiveField(2)
  String? name;

  factory Source.fromJson(Map<String, dynamic> json) => Source(
        id: json["id"] == null ? null : json["id"],
        name: json["name"],
      );
}

class Adapters {
  static registeradapter() {
    Hive.registerAdapter(AppleModelAdapter());
    Hive.registerAdapter(ArticleAdapter());
    Hive.registerAdapter(SourceAdapter());
   
  }
}
