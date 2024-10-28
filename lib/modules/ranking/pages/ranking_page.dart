import 'package:flutter/material.dart';
import 'package:libromate_app/widgets/appbar_widget.dart';

class RankingPage extends StatelessWidget {
  const RankingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppbarWidget(title: 'Peringkat'),
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
