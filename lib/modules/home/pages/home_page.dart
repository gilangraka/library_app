import 'package:flutter/material.dart';
import 'package:libromate_app/widgets/appbar_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppbarWidget(title: 'Beranda'),
          Expanded(
            child: Center(
              child: Text('Konten'),
            ),
          )
        ],
      ),
    );
  }
}
