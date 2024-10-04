import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TentangMasjidPage extends StatelessWidget {
  const TentangMasjidPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tentang Masjid',
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
            Text(
              'Deskripsi Masjid:',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            TextFormField(
              maxLines: 6,
              decoration: InputDecoration(
                labelText: 'Tulis deskripsi tentang masjid...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              style: GoogleFonts.poppins(), 
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end, 
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Aksi Simpan
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Deskripsi berhasil disimpan!')),
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
}
