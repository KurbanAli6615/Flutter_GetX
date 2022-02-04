import 'package:get/route_manager.dart';

class LocalizedText extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          'hello': "Hello",
          'localization': 'Localization',
        },
        'hi': {
          'hello': "नमस्कार",
          'localization': 'स्थानीयकरण',
        },
        'fr': {
          'hello': "Bonjour",
          'localization': 'Localisation',
        },
      };
}
