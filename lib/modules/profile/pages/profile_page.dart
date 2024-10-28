import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:libromate_app/helpers/config.dart';
import 'package:libromate_app/modules/auth/onboarding/onboarding_page.dart';
import 'package:libromate_app/modules/profile/pages/faq/faq_page.dart';
import 'package:libromate_app/widgets/appbar_widget.dart';
import 'package:libromate_app/widgets/profile_card.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppbarWidget(title: 'Profil'),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            ProfileCard(
                              imageUrl: 'assets/images/dummy_profile.png',
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Artix von Kreiger',
                                  style: blackTextStyle.copyWith(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '(3.34.22.2.08)',
                                  style: blackTextStyle.copyWith(fontSize: 12),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.edit,
                          size: 32,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: greyColor,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dashboard',
                          style: greyTextStyle.copyWith(
                              fontWeight: FontWeight.normal),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Buku yang Sedang Dipinjam',
                              style: headingTextStyle.copyWith(
                                  fontSize: 14, color: primaryColor),
                            ),
                            IconButton(
                              icon: const Icon(
                                Icons.grid_view,
                                size: 16,
                              ),
                              onPressed: () {},
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: greyColor,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Akun Saya',
                          style: greyTextStyle.copyWith(
                              fontWeight: FontWeight.normal),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'FAQ',
                              style: headingTextStyle.copyWith(
                                  fontSize: 14, color: primaryColor),
                            ),
                            IconButton(
                              icon: const Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 16,
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => FAQPage(),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Keluar Akun',
                              style: headingTextStyle.copyWith(
                                  fontSize: 14, color: dangerColor),
                            ),
                            IconButton(
                              icon: const Icon(
                                Icons.logout,
                                size: 16,
                              ),
                              onPressed: () {
                                Get.offAll(() => {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              OnboardingPage(),
                                        ),
                                      )
                                    });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
