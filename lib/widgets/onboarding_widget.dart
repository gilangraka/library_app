import 'package:flutter/material.dart';
import 'package:libromate_app/helpers/config.dart';
import 'package:libromate_app/modules/auth/onboarding/onboarding_controller.dart';
import 'package:libromate_app/widgets/btn_primary_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingWidget extends StatelessWidget {
  const OnboardingWidget({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 24),
          Image.asset(
            image,
            width: 353,
          ),
          Column(children: [
            SmoothPageIndicator(
              controller: OnboardingController.instance.pageController,
              count: 3,
              onDotClicked: (index) =>
                  OnboardingController.instance.dotNavigationClick(index),
              effect: const ExpandingDotsEffect(
                activeDotColor: Color(0xFF023B7E),
                dotHeight: 4.0,
              ),
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: headingTextStyle.copyWith(
                      fontSize: 30,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    subTitle,
                    style: blackTextStyle.copyWith(fontSize: 16),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Divider(
              thickness: 2, // Ketebalan garis
              color: Colors.grey[200], // Warna garis
            ),
            const SizedBox(height: 12),
            BtnPrimaryWidget(
              label: 'Lanjutkan',
              onclick: () => OnboardingController.instance.nextPage(),
            ),
          ]),
        ],
      ),
    );
  }
}
