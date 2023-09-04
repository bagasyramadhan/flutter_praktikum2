import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bagas_praktikum2/components/news_card.dart';

class HomeMainLayout extends StatelessWidget {
  const HomeMainLayout({super.key});

  // Fungsi untuk membuat child dengan border
  Widget _buildChildWithBorder(Widget child) {
    return Container(
      margin: const EdgeInsets.all(8.0), // Margin yang tipis sekitar Container
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black), // Garis berwarna hitam
      ),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.all(8.0), // Margin yang tipis sekitar Container
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black), // Garis berwarna hitam
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildChildWithBorder(
                Image.network(
                  'https://lh3.googleusercontent.com/-52spkrDEeJk/Y6lU8U3Pk6I/AAAAAAACiew/vPOr1Rl6tMYZTHzPMgdvLRch3OAZwp-EwCNcBGAsYHQ/s16000/1672041710129293-0.png',
                  fit: BoxFit.cover,
                  height: 200,
                  width: double.infinity,
                ),
              ),
              const SizedBox(height: 8),
              _buildChildWithBorder(
                Text(
                  'IbukotaRace Hari ini Menampilkan Tekno Tuner Usai Berlaga di Rayong',
                  style: GoogleFonts.plusJakartaSans(fontSize: 21),
                ),
              ),
              const SizedBox(height: 8),
              _buildChildWithBorder(
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(8.0),
                  decoration: const BoxDecoration(color: Colors.purple),
                  child: const Text("Kejuaraan"),
                ),
              ),
              const SizedBox(height: 8),
              _buildChildWithBorder(
                Column(
                  children: List.generate(10, (index) => const NewsCard(title: "Peraih Podium 1st Ibukota")),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
