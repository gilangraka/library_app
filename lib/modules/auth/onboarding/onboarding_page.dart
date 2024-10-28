import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:libromate_app/helpers/config.dart';
import 'package:libromate_app/modules/auth/onboarding/onboarding_controller.dart';
import 'package:libromate_app/widgets/onboarding_widget.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    return GetMaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white, // Mengatur warna latar belakang
      ),
      home: Scaffold(
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: AppBar(
                backgroundColor: Colors.white,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/logos/logo.png',
                      width: 76,
                    ),
                    TextButton(
                      onPressed: () => OnboardingController.instance.skipPage(),
                      child: Text(
                        'SKIP',
                        style: primaryTextStyle.copyWith(
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: PageView(
                controller: controller.pageController,
                onPageChanged: controller.updatePageIndicator,
                children: [
                  OnboardingWidget(
                    image: 'assets/images/onboarding1.png',
                    title: 'Mau Cari Buku Favoritmu?',
                    subTitle:
                        'temukan buku yang ingin anda cari disini dan bacalah di perpustakan dengan sesuka hati',
                  ),
                  OnboardingWidget(
                    image: 'assets/images/onboarding2.png',
                    title: 'Dengan Membaca Kamu Bisa Membuka Dunia!',
                    subTitle:
                        'Dengan membaca buku kita dapat membuka jendela nari, ilmu yang baru serta wawasan yang baru',
                  ),
                  OnboardingWidget(
                    image: 'assets/images/onboarding3.png',
                    title: 'Yuk Buka Pikiranmu Bersama Kamu',
                    subTitle:
                        'Daftarkan akunmu untuk mendapatkan lebih banyak wawasan baru!',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
