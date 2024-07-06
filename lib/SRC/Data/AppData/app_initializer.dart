



import 'package:chance/SRC/Application/Services/Notification/notification_services.dart';

import '../../Application/Utils/app_preferences.dart';

mixin AppInitializer {
   Future init() async {
     await NotificationServices().initNotification();
  _user();


 // Data().registerServices();

  }

  static Future _user() async {


    await SharedPrefs.init().whenComplete(() async {
     // await SharedPrefs.getUserLoginData();


      SharedPrefs.setGetTheme();

     // SharedPrefs.getUserToken();

    });


  }
}
