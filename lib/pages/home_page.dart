import 'package:flutter/material.dart';
import 'package:bagas_praktikum2/layouts/home/home_main_layout.dart';
import 'package:bagas_praktikum2/layouts/home/home_today_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          automaticallyImplyLeading: false,
          title: const Text("My App"),
        ),
        body: const Column(
          children: [
            TabBar(
              tabs: [
                Tab(
                  child: Text("Berita Terbaru"),
                ),
                Tab(
                  child: Text("Pertandingan Hari Ini"),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  HomeMainLayout(),
                  HomeTodayLayout(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
