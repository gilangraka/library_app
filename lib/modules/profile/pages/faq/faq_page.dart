import 'package:flutter/material.dart';
import 'package:libromate_app/widgets/appbar_back_widget.dart';

class FAQPage extends StatelessWidget {
  const FAQPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [AppbarBackWidget(title: 'FAQ')],
      ),
    );
  }
}
