import 'package:dribble_ui_practice/design_one/second_page/widgets/title_text.dart';
import 'package:dribble_ui_practice/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String image;
  final String title;
  final bool isStarGolden;
  final bool isNotiGolden;

  const CustomListTile({
    Key? key,
    required this.image,
    required this.title,
    required this.isStarGolden,
    required this.isNotiGolden,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 150,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            elevation: 3,
            shadowColor: MyColors.mainColor,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Image.asset(
                            image,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 18, horizontal: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TitleText(text: title, textSize: 18),
                            const SizedBox(height: 20),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.notifications,
                                  size: 30,
                                  color: isNotiGolden
                                      ? Colors.orange
                                      : MyColors.mainColor.withOpacity(0.8),
                                ),
                                Icon(
                                  Icons.star,
                                  size: 30,
                                  color: isStarGolden
                                      ? Colors.orange
                                      : MyColors.mainColor.withOpacity(0.8),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  CircleAvatar(
                    radius: 23,
                    backgroundColor: Colors.orange.withOpacity(0.8),
                    child: const Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
