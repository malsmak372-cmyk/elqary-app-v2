import '../../../../routes/routes.dart';
import '../../../core/util/constants.dart';
import '../../../core/util/controller/share_controller.dart';
import '../../../core/util/controller/url_launcher_controller.dart';

class GeneralOption {
  final String imagePath;
  final String? routeName;
  final Function()? onTap;
  final String title;
  final String subtitle;

  GeneralOption({
    required this.imagePath,
    required this.onTap,
    required this.title,
    required this.subtitle,
    this.routeName,
  });
}

final List<GeneralOption> generalOptions = [
  GeneralOption(
    imagePath: 'assets/images/setting_icon/svg/thank.svg',
    onTap: null,
    routeName: RouteGenerator.thankyou,
    title: 'شكراً لكم',
    subtitle: 'المساهمون الذين ساعدوا في جعل هذا التطبيق حقيقة!',
  ),
  GeneralOption(
    imagePath: 'assets/images/setting_icon/svg/star.svg',
    onTap: () async {
      await launchURL(PLAY_STORE_URL);
    },
    title: 'قيم التطبيق',
    subtitle: 'هل استمتعت باستخدام تطبيق القارئ؟ يرجى ترك تقييم لمساعدتنا.',
  ),
  GeneralOption(
    imagePath: 'assets/images/setting_icon/svg/share.svg',
    onTap: () async {
      await onShare('Hey! Checkout this app '
          'https://play.google.com/store/apps/details?id=com.devtechnologies.siratemustaqeem');
    },
    title: 'شارك مع صديق',
    subtitle: 'أخبر الآخرين عن التطبيق من خلال الرابط.',
  ),
  GeneralOption(
    imagePath: 'assets/images/setting_icon/svg/donate.svg',
    onTap: () {},
    title: 'دعم المشروع',
    subtitle: 'ادعم مشروعنا للاستمرار في تقديم الفائدة للمسلمين.',
  ),
];
