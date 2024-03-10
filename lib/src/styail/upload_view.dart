import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

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
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            gender = gender == 'male' ? '' : 'male';
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            gender == 'male'
                                ? Colors.black
                                : const Color(0xffe0e0e0),
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                        child: Text(
                          "Male",
                          style: TextStyle(
                              color: gender == 'male'
                                  ? Colors.white
                                  : Colors.black),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            gender = gender == 'female' ? '' : 'female';
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            gender == 'female'
                                ? Colors.black
                                : const Color(0xffe0e0e0),
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                        child: Text(
                          "Female",
                          style: TextStyle(
                              color: gender == 'female'
                                  ? Colors.white
                                  : Colors.black),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            gender = gender == 'dm' ? '' : 'dm';
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            gender == 'dm'
                                ? Colors.black
                                : const Color(0xffe0e0e0),
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                        child: Text(
                          "Does not matter",
                          style: TextStyle(
                            color: gender == 'dm' ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
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
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            size = size == 's' ? '' : 's';
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            size == 's'
                                ? Colors.black
                                : const Color(0xffe0e0e0),
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                        child: Text(
                          "S",
                          style: TextStyle(
                            color: size == 's' ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            size = size == 'm' ? '' : 'm';
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            size == 'm'
                                ? Colors.black
                                : const Color(0xffe0e0e0),
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                        child: Text(
                          "M",
                          style: TextStyle(
                            color: size == 'm' ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            size = size == 'l' ? '' : 'l';
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            size == 'l'
                                ? Colors.black
                                : const Color(0xffe0e0e0),
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                        child: Text(
                          "L",
                          style: TextStyle(
                            color: size == 'l' ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            size = size == 'xl' ? '' : 'xl';
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            size == 'xl'
                                ? Colors.black
                                : const Color(0xffe0e0e0),
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                        child: Text(
                          "XL",
                          style: TextStyle(
                            color: size == 'xl' ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            size = size == 'xxl' ? '' : 'xxl';
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            size == 'xxl'
                                ? Colors.black
                                : const Color(0xffe0e0e0),
                          ),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                        child: Text(
                          "XXL",
                          style: TextStyle(
                            color: size == 'xxl' ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
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
