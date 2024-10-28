import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
    required this.imageUrl,
  });
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 80,
          width: 80,
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(.2),
                        offset: Offset(0, 2),
                        blurRadius: 4,
                        spreadRadius: 1)
                  ]),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              )),
        ),
      ],
    );
  }
}
