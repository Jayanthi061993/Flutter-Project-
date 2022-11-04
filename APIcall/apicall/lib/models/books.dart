class Books {
  final String link;
  final String title;
  final String author;
  Books({required this.link, required this.title, required this.author});
  factory Books.fromJson(Map<String, dynamic> json) {
    return Books(
        link: json['link'], title: json['title'], author: json['author']);
  }
}
