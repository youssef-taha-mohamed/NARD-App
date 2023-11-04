import 'package:nard/moduls/localization_services.dart';

enum TKeys{
  hi,
  popularService,
  more,
  myService,
  booking,
  portfolio,
  ecommerce,
  socialMedia,
  saudi,
  flutterApp,
  anyService,
  subscription,
  free,
  consultation,
  bookNow,
  fullName,
  email,
  mobile,
  services,
  description,
  submit,
  contactUs,
  text,
  myAccount,
  signIn,
  setting,
  bookConsultation,
  getHelp,
  nardBlog,
  feedback,
  rateUs,
  sharing,
  password,
  emailT,
  login,
  forget,
  language,
  theme,
  currency,
  dark,
  light,
  usd,
  riyal,
  comment,
  note,
  notification,
}

extension TKeysExtention on TKeys{
  String get _string => this.toString().split('.')[1];

  String translate(context){
    return LocalizationService.of(context).translate(_string) ?? '';
  }
}