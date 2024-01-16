import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:todo_list/views/screens/calender_informationpage.dart';
import 'firebase_options.dart';
import 'views/screens/home_page.dart';
import 'views/screens/intro_screen.dart';
import 'views/screens/list_page.dart';
import 'views/screens/login_page.dart';
import 'views/screens/my_task_informationpage.dart';
import 'views/screens/project_information_page.dart';
import 'views/screens/setting_page.dart';
import 'views/screens/splash_screen.dart';

void main() async{
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash_screen',
      theme: ThemeData.light(useMaterial3: true),
      darkTheme: ThemeData.dark(useMaterial3: true),
      themeMode: ThemeMode.system,
      getPages: [
        GetPage(name: '/splash_screen', page: () => Splash_screen()),
        GetPage(name: '/intro_screen', page: () => Intro_screen()),
        GetPage(name: '/login_page', page: () =>  Login_page()),
        GetPage(name: '/home_page', page: () => Home_page()),
        GetPage(name: '/list_page', page: () =>  List_page()),
        GetPage(name: '/setting_page', page: ()=> Setting_page()),
        GetPage(name: '/project_information_page', page: ()=> Project_information_page()),
        GetPage(name: '/my_taskinformationpage', page: ()=> My_taskinformation_page()),
        GetPage(name: '/calender_informationpage', page: ()=> Calender_information_page()),

      ],
    ),
  );
}
