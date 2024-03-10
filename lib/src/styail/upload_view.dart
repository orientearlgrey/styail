import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:styail/src/styail/components/selector_button.dart';

class StyailUploadView extends StatefulWidget {
  const StyailUploadView({super.key});

  static const routeName = '/';

  @override
  State<StyailUploadView> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<StyailUploadView> {
  late String gender;
  late String size;

  @override
  void initState() {
    super.initState();
    gender = "";
    size = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40.0),
          child: Center(
            child: SizedBox(
              width: 330,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'Hello, User.',
                    style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Arial',
                      color: Color(0xFF333333),
                    ),
                  ),
                  const Text(
                    'Let\'s get started on creating a personalised experience just for you ✨',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    'Upload your pictures *',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: DottedBorder(
                      borderType: BorderType.RRect,
                      radius: const Radius.circular(8),
                      dashPattern: const [8, 4],
                      strokeWidth: 2,
                      color: const Color(0xffcccccc),
                      child: Container(
                        height: 112,
                        width: 480,
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.drive_folder_upload_rounded,
                              color: Color(0xff7c7c7c),
                              size: 32,
                            ),
                            Text(
                              'Upload 3 images',
                              style: TextStyle(
                                fontSize: 17,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Center(
                    child: Text(
                      'Select Gender',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      StyailSelectorButton(
                          attribute: gender,
                          value: 'Male',
                          action: () {
                            setState(() {
                              gender = gender == 'male' ? '' : 'male';
                            });
                          }),
                      StyailSelectorButton(
                          attribute: gender,
                          value: 'Female',
                          action: () {
                            setState(() {
                              gender = gender == 'female' ? '' : 'female';
                            });
                          }),
                      StyailSelectorButton(
                          attribute: gender,
                          value: 'Does not matter',
                          action: () {
                            setState(() {
                              gender = gender == 'does not matter'
                                  ? ''
                                  : 'does not matter';
                            });
                          }),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Center(
                    child: Text(
                      "Select Your Size",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      StyailSelectorButton(
                          attribute: size,
                          value: 'S',
                          action: () {
                            setState(() {
                              size = size == 's' ? '' : 's';
                            });
                          }),
                      StyailSelectorButton(
                          attribute: size,
                          value: 'M',
                          action: () {
                            setState(() {
                              size = size == 'm' ? '' : 'm';
                            });
                          }),
                      StyailSelectorButton(
                          attribute: size,
                          value: 'L',
                          action: () {
                            setState(() {
                              size = size == 'l' ? '' : 'l';
                            });
                          }),
                      StyailSelectorButton(
                          attribute: size,
                          value: 'XL',
                          action: () {
                            setState(() {
                              size = size == 'xl' ? '' : 'xl';
                            });
                          }),
                      StyailSelectorButton(
                          attribute: size,
                          value: 'XXL',
                          action: () {
                            setState(() {
                              size = size == 'xxl' ? '' : 'xxl';
                            });
                          }),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Colors.black,
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 15.0),
                      child: Text(
                        'NEXT',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
