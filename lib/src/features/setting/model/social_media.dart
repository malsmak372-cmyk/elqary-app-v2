import '../../../core/util/constants.dart';

class SocialMedia {
  final String imagePath;
  final String name;
  final String url;

  SocialMedia({
    required this.imagePath,
    required this.name,
    required this.url,
  });
}

final List<SocialMedia> socialMediaList = [
  SocialMedia(
    imagePath: 'assets/images/setting_icon/svg/link.svg',
    name: 'الموقع',
    url: WEBSITE_URL,
  ),
  SocialMedia(
    imagePath: 'assets/images/setting_icon/svg/email.svg',
    name: 'البريد',
    url: EMAIL_URL,
  ),
  SocialMedia(
    imagePath: 'assets/images/setting_icon/svg/medium.svg',
    name: 'Medium',
    url: MEDIUM_URL,
  ),
  SocialMedia(
    imagePath: 'assets/images/setting_icon/svg/youtube.svg',
    name: 'يوتيوب',
    url: YOUTUBE_URL,
  ),
  SocialMedia(
    imagePath: 'assets/images/setting_icon/svg/facebook.svg',
    name: 'فيسبوك',
    url: FACEBOOK_URL,
  ),
  SocialMedia(
    imagePath: 'assets/images/setting_icon/svg/insta.svg',
    name: 'انستغرام',
    url: INSTA_URL,
  ),
];
