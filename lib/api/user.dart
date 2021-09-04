import 'package:url_launcher/url_launcher.dart';
import 'package:hive/hive.dart';

class UserApi {

  void launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<bool> login(String provider) async {
    print('Login with ${provider}');
    launchURL('what2cook://what2cook.com?id=testid');
    return true;
  }

  Future<bool> logout() async {
    print('Logout');
    Hive.box('local').delete('id');
    return true;
  }
}

final userApi = UserApi();