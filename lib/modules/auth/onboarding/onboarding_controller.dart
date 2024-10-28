import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:libromate_app/modules/auth/login/login_page.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  void updatePageIndicator(index) => currentPageIndex.value = index;

  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    // Menambahkan animasi ketika pindah halaman melalui dot
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300), // Durasi animasi 300ms
      curve: Curves.easeInOut, // Kurva animasi
    );
  }

  void nextPage() {
    if (currentPageIndex.value == 2) {
      LoginPage.errorMsg.value = "";
      Get.to(LoginPage());
    } else {
      int nextPage = currentPageIndex.value + 1;
      pageController.animateToPage(
        nextPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void skipPage() {
    currentPageIndex.value = 2;
    pageController.animateToPage(
      2,
      duration: const Duration(milliseconds: 300), // Durasi animasi 300ms
      curve: Curves.easeInOut, // Kurva animasi smooth
    );
  }
}
