import 'globals.dart';

class ConstUrls {
  static String baseUrl() {
    if (appMode != AppMode.release) {
      return "http://172.20.10.6:3000/";
    } else {
      return "";
    }
  }
}
