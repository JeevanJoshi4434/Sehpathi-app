import 'package:flutter/material.dart';

class TrandingItems extends StatelessWidget {
  final String image;
  const TrandingItems({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
          height: 150,
          width: 100,
        ),
        SizedBox(
          width: 10,
        )
      ],
    );
  }
}
