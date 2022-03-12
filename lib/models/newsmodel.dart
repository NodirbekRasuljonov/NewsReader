
class News {
    News({
        this.status,
        this.totalHits,
        this.page,
        this.totalPages,
        this.pageSize,
        this.articles,
        this.userInput,
    });

    String? status;
    int? totalHits;
    int? page;
    int? totalPages;
    int? pageSize;
    List<Article>? articles;
    UserInput? userInput;

    factory News.fromJson(Map<String, dynamic> json) => News(
        status: json["status"],
        totalHits: json["total_hits"],
        page: json["page"],
        totalPages: json["total_pages"],
        pageSize: json["page_size"],
        articles: List<Article>.from(json["articles"].map((x) => Article.fromJson(x))),
        userInput: UserInput.fromJson(json["user_input"]),
    );

   
}

class Article {
    Article({
        this.title,
        this.author,
        this.publishedDate,
        this.publishedDatePrecision,
        this.link,
        this.cleanUrl,
        this.summary,
        this.rights,
        this.rank,
        this.topic,
        this.country,
        this.language,
        this.authors,
        this.media,
        this.isOpinion,
        this.twitterAccount,
        this.score,
        this.id,
    });

    String? title;
    dynamic? author;
    DateTime? publishedDate;
    String? publishedDatePrecision;
    String? link;
    String? cleanUrl;
    String? summary;
    String? rights;
    int? rank;
    String? topic;
    String? country;
    String? language;
    List<dynamic>? authors;
    String? media;
    bool? isOpinion;
    String? twitterAccount;
    double? score;
    String? id;

    factory Article.fromJson(Map<String, dynamic> json) => Article(
        title: json["title"],
        author: json["author"],
        publishedDate: DateTime.parse(json["published_date"]),
        publishedDatePrecision: json["published_date_precision"],
        link: json["link"],
        cleanUrl: json["clean_url"],
        summary: json["summary"],
        rights: json["rights"],
        rank: json["rank"],
        topic: json["topic"],
        country: json["country"] == null ? null : json["country"],
        language: json["language"],
        authors: List<dynamic>.from(json["authors"].map((x) => x)),
        media: json["media"],
        isOpinion: json["is_opinion"],
        twitterAccount: json["twitter_account"],
        score: json["_score"].toDouble(),
        id: json["_id"],
    );

}

class UserInput {
    UserInput({
        this.q,
        this.lang,
        this.from,
        this.sortBy,
        this.page,
        this.size,
    });

    String? q;
    String? lang;
    DateTime? from;
    String? sortBy;
    int? page;
    int? size;

    factory UserInput.fromJson(Map<String, dynamic> json) => UserInput(
        q: json["q"],
        lang: json["lang"],
        from: DateTime.parse(json["from"]),
        sortBy: json["sort_by"],
        page: json["page"],
        size: json["size"],
    );

    
}
