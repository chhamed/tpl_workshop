import 'package:flutter/material.dart';

import 'package:workshop_2/theme/app_colors.dart';

import '../../theme/text_styles.dart';
import '../widgets/medicament_card.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> days = [
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday",
    "Sunday"
  ];
  int currentIndex = 0;
  void changeIndex(int index) {
    currentIndex = index;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 70,
            ),
            Text(
              "Hi Hamed",
              style: subHeadTitle,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Welcome Back",
              style: headTitle,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Today is",
              style: body,
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(
                    7,
                    (index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: GestureDetector(
                        onTap: () {
                          changeIndex(index);
                        },
                        child: Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: currentIndex == index
                                ? AppColors.purple
                                : AppColors.cardsColor,
                          ),
                          child: Center(
                              child: Text(days[index],
                                  style: body.copyWith(
                                    color: AppColors.textColor,
                                  ))),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text("My medications for today", style: subHeadTitle),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    ...List.generate(
                        10,
                        (index) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "10:00",
                                    style: subHeadTitle,
                                  ),
                                  const MedicamentCard(),
                                ],
                              ),
                            ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
