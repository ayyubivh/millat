import 'package:flutter/material.dart';
import 'package:millat/components/textFields/custom_text_field.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:dotted_border/dotted_border.dart';

import '../../../../../components/buttons/main_button.dart';

class AddNewBookMarkCollection extends StatefulWidget {
  const AddNewBookMarkCollection({super.key});

  @override
  State<AddNewBookMarkCollection> createState() =>
      _AddNewBookMarkCollectionState();
}

class _AddNewBookMarkCollectionState extends State<AddNewBookMarkCollection> {
  bool isExpand = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.whiteColor,
      appBar: AppBar(
          backgroundColor: ColorManager.appBarColor,
          elevation: 0,
          centerTitle: true,
          leading: Center(
            child: Text(
              "Cancel",
              style: TextStyle(
                fontSize: 17,
                color: ColorManager.redColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          title: Text(
            'Create Collection',
            style: TextStyle(
              color: ColorManager.blackColor,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            Center(
              child: Text(
                'Done',
                style: TextStyle(
                  color: ColorManager.primary,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            kWidth15,
          ]),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kHeight25,
            _dottedbutton(),
            kHeight20,
            const Text(
              'Collection Name',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            kHeight15,
            const CustomTextField(
              icon: Icon(null),
              hint: "Give a Name",
            ),
            kHeight20,
            const Text(
              'Discription',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            kHeight15,
            const CustomTextField(
              icon: Icon(null),
              hint: "Add Description",
            ),
            kHeight30,
            MainButton(
              title: "Add Suras",
              onPressed: () {},
            ),
            kHeight25,
            Container(
              color: ColorManager.whiteColor,
              child: Row(
                children: [
                  ImageIcon(
                    const AssetImage("assets/images/folder_red.png"),
                    color: ColorManager.redColor,
                  ),
                  kWidht10,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Al-Fatiah',
                        style: TextStyle(
                          color: ColorManager.blackColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      kHeight8,
                      Text(
                        'MECCAN 7 VERSES',
                        style: TextStyle(
                          color: ColorManager.textGrey,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Text(
                    'ةحتافلا',
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  kWidth5,
                  InkWell(
                    onTap: () {
                      setState(() {
                        isExpand = !isExpand;
                      });
                    },
                    child: isExpand == true
                        ? const Icon(
                            Icons.expand_more,
                            size: 30,
                          )
                        : const Icon(
                            Icons.navigate_next,
                            size: 30,
                          ),
                  ),
                ],
              ),
            ),
            kHeight10,
            const Divider(),
            isExpand == true
                ? Expanded(
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: ImageIcon(
                            const AssetImage("assets/images/folder_red.png"),
                            color: ColorManager.redColor,
                          ),
                          title: Text('Aya ${index + 1}'),
                          trailing: Icon(
                            Icons.navigate_next,
                            size: 30,
                            color: ColorManager.blackColor,
                          ),
                        );
                      },
                    ),
                  )
                : const SizedBox()
          ],
        ),
      ),
    );
  }

  Align _dottedbutton() {
    return Align(
      alignment: Alignment.center,
      child: DottedBorder(
        dashPattern: const [5, 5],
        strokeWidth: 1.5,
        borderType: BorderType.RRect,
        radius: const Radius.circular(12),
        padding: const EdgeInsets.all(6),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          child: SizedBox(
            height: 155,
            width: 160,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/add_image_1.png"),
                kHeight10,
                const Text(
                  'Choose Image',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
