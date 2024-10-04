import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlamatMasjidPage extends StatelessWidget {
  const AlamatMasjidPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Alamat Masjid',
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTextFormField('Alamat', 'Dsn Kenteng RT.03 RW.04, Desa Kebumen, Kec.Pringsurat'),
            _buildTextFormField('Pringsurat', 'Pringsurat'),
            _buildTextFormField('Kota/Kabupaten', 'Temanggung'),
            _buildTextFormField('Koordinat Peta', ''),
            _buildTextFormField('Telepon', '08139095711121'),
            _buildTextFormField('Email', 'maskhoerul@gmail.com'),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end, // Tombol di sebelah kanan
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Aksi Simpan
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Alamat berhasil disimpan!')),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24.0, vertical: 12.0),
                  ),
                  child: Text(
                    'Simpan',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context); 
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[200],
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24.0, vertical: 12.0),
                  ),
                  child: Text(
                    'Kembali',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Fungsi untuk membuat TextFormField
  Widget _buildTextFormField(String label, String initialValue) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        initialValue: initialValue,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        style: GoogleFonts.poppins(), 
      ),
    );
  }
}
