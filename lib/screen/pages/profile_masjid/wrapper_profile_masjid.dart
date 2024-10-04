import 'package:emasjid/components/color.dart';
import 'package:emasjid/screen/pages/profile_masjid/alamat_masjid.dart';
import 'package:emasjid/screen/pages/profile_masjid/data_masjid.dart';
import 'package:emasjid/screen/pages/profile_masjid/foto_masjid.dart';
import 'package:emasjid/screen/pages/profile_masjid/informasi_masjid.dart';
import 'package:emasjid/screen/pages/profile_masjid/sosial_media_masjid.dart';
import 'package:emasjid/screen/pages/profile_masjid/tentang_masjid.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileMasjidWrapper extends StatefulWidget {
  const ProfileMasjidWrapper({Key? key}) : super(key: key);

  @override
  _ProfileMasjidWrapperState createState() => _ProfileMasjidWrapperState();
}

class _ProfileMasjidWrapperState extends State<ProfileMasjidWrapper>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    // Tab controller untuk enam tab
    _tabController = TabController(length: 6, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile Masjid',
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: AppColors.primaryColor,
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          tabs: [
            Tab(child: Text('Informasi', style: GoogleFonts.poppins(fontWeight: FontWeight.w600))),
            Tab(child: Text('Data Masjid', style: GoogleFonts.poppins(fontWeight: FontWeight.w600))),
            Tab(child: Text('Tentang', style: GoogleFonts.poppins(fontWeight: FontWeight.w600))),
            Tab(child: Text('Alamat Masjid', style: GoogleFonts.poppins(fontWeight: FontWeight.w600))),
            Tab(child: Text('Foto', style: GoogleFonts.poppins(fontWeight: FontWeight.w600))),
            Tab(child: Text('Sosial Media', style: GoogleFonts.poppins(fontWeight: FontWeight.w600))),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          InformasiMasjidPage(),
          DataMasjidPage(),
          TentangMasjidPage(),
          AlamatMasjidPage(),
          FotoMasjidPage(),
          SosialMediaMasjidPage()
        ],
      ),
    );
  }
}
