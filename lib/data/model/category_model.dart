

import '../../core/resources/app_const/app_assets.dart';

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
   Category(title: '',lightImage: AppImages.generalDark),
   Category(title: '',lightImage: AppImages.businessDark),
   Category(title: '',lightImage: AppImages.sportDark),
   Category(title: '',lightImage: AppImages.technologyDark),
   Category(title: '',lightImage: AppImages.entertainmentDark),
   Category(title: '',lightImage: AppImages.healthDark),
   Category(title: '',lightImage: AppImages.scienceDark),
 ];
}
