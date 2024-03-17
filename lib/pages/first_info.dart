import 'package:flutter/material.dart';

import '../widget/appbar_widget.dart';
import '../widget/container_info_save_data.dart';
import '../widget/dropdown_button.dart';
import '../widget/image_peofile.dart';
import '../widget/text_button_data.dart';
import '../widget/text_filed_data.dart';

class BasicInfo extends StatelessWidget {
  const BasicInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const AppBarWidget(
          titel: "Basic Info",
        ),
        body: ListView(
          children: [
            const SizedBox(
              height: 2,
            ),
            const ContainerInfo(
              indexpages: "1/5",
              title: "Basic Info",
              desc: " Introduce Yourself More ",
            ),
            const SizedBox(
              height: 12,
            ),
            const ImageProfile(),
            const SizedBox(
              height: 1,
            ),
            TextFiledData(
              labelText: "Name",
            ),
            TextFiledData(
              labelText: "Surname",
            ),
            const SizedBox(
              height: 1,
            ),
            const DropdownButtonn(
              hint: "Select",
              labelText: "Gender",
            ),
            const SizedBox(
              height: 1,
            ),
            TextFiledData(
              labelText: "Data of Birth",
            ),
            const SizedBox(
              height: 1,
            ),
            TextFiledData(
              labelText: "Medical Titel",
            ),
            const SizedBox(
              height: 1,
            ),
            TextFiledData(
              labelText: "Office Address",
            ),
            const SizedBox(
              height: 1,
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
      ),
    );
  }
}
