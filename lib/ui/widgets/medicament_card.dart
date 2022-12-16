import 'package:flutter/material.dart';

import 'package:workshop_2/theme/app_colors.dart';
import 'package:workshop_2/theme/text_styles.dart';

class MedicamentCard extends StatelessWidget {
  const MedicamentCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // we didn't talk about responsivity so i used static values but we can use
      //MediaQuery.of(context).size.height* 0.1 ( for example , percentage of screen ) and same for the width
      height: 90,
      width: 300,
      decoration: BoxDecoration(
          color: AppColors.cardsColor, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "assets/images/med_2.jpg",
                fit: BoxFit.fill,
                height: 70,
                width: 70,
              ),
            ),
            const SizedBox(
              width: 40,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Adol Extra",
                  style: subHeadTitle.copyWith(color: Colors.black),
                ),
                Text(
                  "2 packs",
                  style: body,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
