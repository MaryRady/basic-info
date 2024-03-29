import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:info/controller/add_work.dart';
import 'package:info/widget/appbar_widget.dart';

import '../widget/add_new_task.dart';
import '../widget/container_info_save_data.dart';
import '../widget/dropdown_button_year.dart';
import '../widget/text_button_data.dart';
import '../widget/text_filed_data.dart';

class EdicationDataView extends StatelessWidget {
  const EdicationDataView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const AppBarWidget(
          titel: "Education",
        ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GetBuilder<AddWork>(
              init: AddWork(),
              builder: (controller) => ListView(
                children: [
                  const ContainerInfo(
                    indexpages: "5/5",
                    title: "Education",
                    desc: "Add your education info",
                  ),
                  SizedBox(
                    height: 8.h,
                    // height: MediaQuery.of(context).size.height / 95,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      " #${controller.index} UNIVERSITY ",
                      style: TextStyle(
                        color: Color.fromRGBO(129, 150, 172, 1),
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                    // height: MediaQuery.of(context).size.height / 199,
                  ),
                  TextFiledData(labelText: "University"),
                  SizedBox(
                    height: 2.h,
                  ),
                  TextFiledData(labelText: " Field of study"),
                  SizedBox(
                    height: 2.h,
                  ),
                  TextFiledData(labelText: "Degree"),
                  SizedBox(
                    height: 2.h,
                    // height: MediaQuery.of(context).size.height / 199,
                  ),
                  Row(
                    children: [
                      const Expanded(
                        child: DropdownButtonyear(
                          hint: "Select",
                          labelText: "Start Year",
                        ),
                      ),
                      SizedBox(
                        width: 30.w,
                      ),
                      const Expanded(
                        child: DropdownButtonyear(
                          hint: "Select",
                          labelText: "End Year",
                        ),
                      ),
                      SizedBox(
                        width: 30.w,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4.h,
                    // height: MediaQuery.of(context).size.height / 199,
                  ),
                  AddNewTask(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const EdicationDataView();
                      }));
                      controller.add();
                    },
                    text: "Add New University",
                  ),
                  SizedBox(
                    height: 108.h,
                    // height: 165.h,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextButtonSaveData(
                          text: "Do it later ",
                          onPressed: () {},
                          decorationcolor: Colors.grey,
                          textcolor: Colors.black,
                        ),
                      ),
                      Expanded(
                        child: TextButtonSaveData(
                          text: "Go next ",
                          onPressed: () {},
                          decorationcolor: Colors.blue,
                          textcolor: Colors.white,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )),
      ),
    );
  }
}
