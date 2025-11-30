class ArticleModel {
  final String? image;
  final String? title;
  final String? description;
  final String? author;
  final String? source;
  final DateTime? publishAT;
  ArticleModel( {
     this.source,
    required this.image,
    required this.title,
    required this.author,
    required this.description,
    required this.publishAT,
  });
  static List<ArticleModel> articles = [
    ArticleModel(
      source: 'alahly',
      image: "https://www.fcbarcelona.com/fcbarcelona/photo/2023/03/14/bce39e02-145a-49c2-b8de-1cb9326e23ab/mini__MGA5942.jpg",
      title: "Liverpool beats Manchester City in Premier League clash",
      author: "BBC Sports",
      description:
      "In a thrilling Premier League clash, Liverpool secured a dramatic win over Manchester City, keeping their title hopes alive.",
      publishAT: DateTime(2025, 1, 20, 18, 30),
    ),

    ArticleModel(
      source: 'on',
      image: "https://www.fcbarcelona.com/fcbarcelona/photo/2023/03/14/bce39e02-145a-49c2-b8de-1cb9326e23ab/mini__MGA5942.jpg",
      title: "Global stock markets surge amid positive economic outlook",
      author: "Reuters",
      description:
      "Global markets witnessed a strong rebound today after new economic reports showed signs of rapid recovery during Q1.",
      publishAT: DateTime(2025, 2, 1, 12, 15),
    ),

    ArticleModel(
      source: 'bein',
      image: "https://www.fcbarcelona.com/fcbarcelona/photo/2023/03/14/bce39e02-145a-49c2-b8de-1cb9326e23ab/mini__MGA5942.jpg",
      title: "Climate changes continue to affect global temperatures",
      author: "CNN News",
      description:
      "Scientists report that 2025 may be one of the hottest years recorded due to rising global temperatures and extreme heat waves.",
      publishAT: DateTime(2025, 1, 28, 09, 05),
    ),

    ArticleModel(
      source: 'nile',
      image: "https://www.fcbarcelona.com/fcbarcelona/photo/2023/03/14/bce39e02-145a-49c2-b8de-1cb9326e23ab/mini__MGA5942.jpg",
      title: "AI Revolution: How artificial intelligence shapes the future",
      author: "Tech Insider",
      description:
      "Artificial Intelligence continues to grow, reshaping industries like healthcare, education, and transportation.",
      publishAT: DateTime(2025, 2, 10, 14, 40),
    ),

    ArticleModel(
      source: 'zamalek',
      image: "https://www.fcbarcelona.com/fcbarcelona/photo/2023/03/14/bce39e02-145a-49c2-b8de-1cb9326e23ab/mini__MGA5942.jpg",
      title: "Lionel Messi breaks new record in MLS season",
      author: "BBC Football",
      description:
      "Lionel Messi scored a hat-trick, breaking another record in his spectacular MLS journey with Inter Miami.",
      publishAT: DateTime(2025, 2, 2, 20, 18),
    ),
  ];

}
