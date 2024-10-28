import 'package:flutter/material.dart';
import 'package:libromate_app/helpers/config.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: headingTextStyle,
            ),
            SizedBox(
              width: 80,
              child: Image.asset('assets/logos/logo.png'),
            ),
          ],
        ),
      ),
    );
  }
}
