import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp(title: 'Struk Belanja'));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'RECEIPT ORDER',
            style: GoogleFonts.spaceGrotesk(color: Colors.white),
          ),
          backgroundColor: Colors.green,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 8),
              Text(
                'KEDAI KOPI UNCU',
                textAlign: TextAlign.center,
                style: GoogleFonts.spaceGrotesk(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Colors.green.withValues(alpha: .1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 4.0,
                  children: [
                    Text(
                      'MARDA ANNAFIN KURNIAWAN',
                      style: GoogleFonts.inter(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('ARN262-25137'),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Iced Latte No Sugar (x1)'),
                  Text('Rp25.000'),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Hot Cappucino Less Sugar (x2)'),
                  Text('Rp50.000'),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Diskon Oktober Promo'),
                  Text('– Rp5.000'),
                ]
              ),
              const SizedBox(height: 8),
              Divider(color: Colors.black.withValues(alpha: 0.5) , thickness: 0.5, ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Bayar',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Rp70.000',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.lightBlue),
                    ),
                ]
              ),
              Divider(color: Colors.black.withValues(alpha: 0.5), thickness: 0.5),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Uang Bayar',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('Rp100.000',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ]
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Kembalian (Uang Sisa)'),
                  Text('Rp30.000'),
                ]
              ),
              const SizedBox(height: 16),
              Divider(color: Colors.black.withValues(alpha: 0.2), thickness: 5),
              const SizedBox(height: 16),
              Text(
                'Jazakumullahukhayran',
                textAlign: TextAlign.center,
                style: GoogleFonts.spaceMono(),
              ),
              Text(
                'Telah Berbelanja di KEDAI KOPI UNCU',
                textAlign: TextAlign.center,
                style: GoogleFonts.spaceMono(),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
