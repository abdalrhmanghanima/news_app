class Category {
  final String? lightImage;
  final String? darkImage;
  final String? title;
  Category({
     this.lightImage,
     this.darkImage,
     this.title,
  });
 static List <Category> categories=[
   Category(title: '',lightImage: 'assets/images/general.png'),
   Category(title: '',lightImage: 'assets/images/business.png'),
   Category(title: '',lightImage: 'assets/images/sport.png'),
   Category(title: '',lightImage: 'assets/images/technology.png'),
   Category(title: '',lightImage: 'assets/images/entertainment.png'),
   Category(title: '',lightImage: 'assets/images/health.png'),
   Category(title: '',lightImage: 'assets/images/science.png'),
 ];
}
