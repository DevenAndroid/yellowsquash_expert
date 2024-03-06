import 'package:get/get.dart';

class LocaleString extends Translations {
  static String nameName = "You first";
  static String noOrderFee = "We don’t charge you order fees. We don’t spy on you. We just help you enjoy your meals";

  @override
  Map<String, Map<String, String>> get keys => {
        //ENGLISH LANGUAGE
        'en_US': {
          nameName: 'You first',
          noOrderFee: 'We don’t charge you order fees. We don’t spy on you. We just help you enjoy your meals'
        },
      };
}
