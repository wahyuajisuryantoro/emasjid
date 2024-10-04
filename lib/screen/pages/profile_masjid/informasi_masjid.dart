import 'package:emasjid/components/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:emasjid/components/masjid_info_row.dart';

class InformasiMasjidPage extends StatelessWidget {
  const InformasiMasjidPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Informasi Masjid',
            style: GoogleFonts.poppins(
                color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: AppColors.secondaryColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Bagian foto masjid dan informasi dasar
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    // Gambar Masjid
                    Container(
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: AssetImage('assets/images/masjid.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    // Nama Masjid di tengah
                    Text(
                      'Masjid An Nur',
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                      textAlign: TextAlign.center, // Di tengah
                    ),
                    const SizedBox(height: 16),
                    // Informasi Masjid
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        MasjidInfoRow(label: 'Luas Tanah', value: '0 m2'),
                        MasjidInfoRow(label: 'Luas Bangunan', value: '0 m2'),
                        MasjidInfoRow(label: 'Status Tanah', value: ''),
                        MasjidInfoRow(label: 'Tahun Berdiri', value: '0000'),
                        MasjidInfoRow(label: 'Legalitas', value: ''),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // Alamat Masjid
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Alamat Masjid',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 8),
                    MasjidInfoRow(label: 'Alamat', value: 'Dsn Kenteng RT.03 RW.04'),
                    MasjidInfoRow(label: 'Kota / Kabupaten', value: 'Temanggung'),
                    MasjidInfoRow(label: 'Koordinat Peta', value: ''),
                    MasjidInfoRow(label: 'Telepon', value: '08139905711121'),
                    MasjidInfoRow(label: 'Email', value: 'maskhoerul@gmail.com'),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // Sosial Media
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sosial Media',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 8),
                    MasjidInfoRow(label: 'URL Facebook', value: ''),
                    MasjidInfoRow(label: 'URL Twitter', value: ''),
                    MasjidInfoRow(label: 'URL Instagram', value: ''),
                    MasjidInfoRow(label: 'URL Youtube', value: ''),
                    MasjidInfoRow(label: 'URL Tiktok', value: ''),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
