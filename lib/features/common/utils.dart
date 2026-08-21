import 'package:url_launcher/url_launcher.dart';

import '../../core.dart';
import 'services/business_settings_store.dart';

class Utils {
  Utils._();

  static Future<void> callBusiness(BuildContext context) async {
    final phone = sl<BusinessSettingsStore>().settings?.appPhone.trim() ?? '';
    if (phone.isEmpty) {
      showMessage(context, 'Support phone number is not available.');
      return;
    }
    final uri = Uri(scheme: 'tel', path: phone);
    final canCall = await canLaunchUrl(uri);
    if (!context.mounted) return;
    if (!canCall) {
      showMessage(context, 'Unable to open the phone dialer.');
      return;
    }
    await launchUrl(uri);
  }

  static void showMessage(BuildContext context, String message) {
    if (!context.mounted) return;
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(message)));
  }
}
