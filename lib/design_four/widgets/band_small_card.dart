import 'package:flutter/material.dart';

class BandSmallCard extends StatelessWidget {
  final String image;
  const BandSmallCard({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Container(
          height: 200,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage(
                  image,
                ),
                fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
