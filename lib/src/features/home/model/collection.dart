import '../../../../routes/routes.dart';

class Collection {
  final String assetName;
  final String title;
  final String routeName;

  Collection(this.assetName, this.title, this.routeName);
}

List<Collection> collections = [
  Collection(
    'assets/images/collection_icon/svg/quran.svg',
    'القرآن الكريم',
    RouteGenerator.quran,
  ),
  Collection(
    'assets/images/collection_icon/svg/hadees.svg',
    'الأحاديث',
    'Coming Soon',
  ),
  Collection(
    'assets/images/collection_icon/svg/duas.svg',
    'الأدعية',
    RouteGenerator.dua,
  ),
  Collection(
    'assets/images/collection_icon/svg/tasbih.svg',
    'التسبيح',
    RouteGenerator.tasbih,
  ),
  Collection(
    'assets/images/collection_icon/svg/allah.svg',
    'أسماء الله الحسنى',
    RouteGenerator.allahName,
  ),
  Collection(
    'assets/images/collection_icon/svg/prayer_time.svg',
    'مواقيت الصلاة',
    RouteGenerator.prayerTimingPage,
  ),
  Collection(
    'assets/images/collection_icon/svg/kiblat.svg',
    'القبلة',
    RouteGenerator.qibla,
  ),
  Collection(
    'assets/images/collection_icon/svg/other.svg',
    'أقسام دينية',
    RouteGenerator.religiousSections,
  ),
];
