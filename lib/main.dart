import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'pages/edication_data.dart';
import 'pages/first_info.dart';
import 'pages/medical_info.dart';
import 'pages/profile_info.dart';
import 'pages/verification_page.dart';
import 'pages/work_experience.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: false),
        // getPages: [
          // GetPage(
          //   name:WorkExperienceView.id,
          // page: ()=>const WorkExperienceView(),),
        // ],
        
        // home:const BasicInfo(),
        // home:const EdicationDataView(),
        // home: const WorkExperienceView(),
        home: const MedicalInfo(),
        // home: const ProfileInfo(),
        // home: const VerificationPage(),
      ),
    );
  }
}
