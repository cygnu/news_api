class Article {
  String? author;
  late String title;
  late String description;
  late String url;
  String? imageUrl;

  Article({
    this.author,
    required this.title,
    required this.description,
    required this.url,
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