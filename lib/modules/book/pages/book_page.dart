import 'package:flutter/material.dart';
import 'package:libromate_app/widgets/appbar_widget.dart';

class BookPage extends StatelessWidget {
  const BookPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppbarWidget(title: 'Buku'),
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
