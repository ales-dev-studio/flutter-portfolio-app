import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:personal_portfolio/core/localization/i18n/translations.g.dart';
import 'package:personal_portfolio/core/utils/app_snack_bar.dart';

Future<bool> checkNetworkConnectionStatus() async {
  try {
    final ConnectivityResult connectivityResult =
        await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi ||
        connectivityResult == ConnectivityResult.vpn) {
      if (connectivityResult == ConnectivityResult.vpn) {
        showSnackBar(t.turnOfVpn);
      }
      return true;
    } else {
      return false;
    }
  } catch (e) {
    return false;
  }
}
