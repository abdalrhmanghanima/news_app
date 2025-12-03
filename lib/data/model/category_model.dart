import '../../core/resources/app_const/app_assets.dart';

class CategoryModel {
  final String id;
  final String title;
  final String lightImage;
  final String darkImage;

  CategoryModel({
    required this.id,
    required this.title,
    required this.lightImage,
    required this.darkImage,
  });

  static List<CategoryModel> categories = [
    CategoryModel(
      id: "general",
      title: "General",
      lightImage: AppImages.general,
      darkImage: AppImages.generalDark,
    ),
    CategoryModel(
      id: "business",
      title: "Business",
      lightImage: AppImages.business,
      darkImage: AppImages.businessDark,
    ),
    CategoryModel(
      id: "sports",
      title: "Sports",
      lightImage: AppImages.sport,
      darkImage: AppImages.sportDark,
    ),
    CategoryModel(
      id: "technology",
      title: "Technology",
      lightImage: AppImages.technology,
      darkImage: AppImages.technologyDark,
    ),
    CategoryModel(
      id: "entertainment",
      title: "Entertainment",
      lightImage: AppImages.entertainment,
      darkImage: AppImages.entertainmentDark,
    ),
    CategoryModel(
      id: "health",
      title: "Health",
      lightImage: AppImages.health,
      darkImage: AppImages.healthDark,
    ),
    CategoryModel(
      id: "science",
      title: "Science",
      lightImage: AppImages.science,
      darkImage: AppImages.scienceDark,
    ),
  ];
}
