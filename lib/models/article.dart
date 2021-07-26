class Article {
  String author;
  String title;
  String description;
  String url;
  String imageUrl;

  Article({
    this.author,
    this.title,
    this.description,
    this.url,
    this.imageUrl,
  });

  Article.fromJson(Map<String, dynamic> json) {
    author = json['author'];
    title = json['title'];
    description = json['description'];
    url = json['url'];
    imageUrl = json['urlToImage'];
  }
}