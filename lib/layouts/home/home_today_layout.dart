import 'package:flutter/material.dart';
import 'package:bagas_praktikum2/components/news_card.dart';

class HomeTodayLayout extends StatelessWidget {
  const HomeTodayLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [


        NewsCard(title:"King Bogang" ,)
      ],
    );
  }
}