import 'package:emasjid/screen/pages/profile_masjid/informasi_masjid.dart';
import 'package:emasjid/screen/pages/profile_masjid/wrapper_profile_masjid.dart';
import 'package:flutter/material.dart';
import 'package:emasjid/components/color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:emasjid/screen/pages/dashboard.dart';

class SideMenu extends StatelessWidget {
  final Function(Widget) onMenuTap; // Fungsi callback untuk mengganti halaman

  const SideMenu({Key? key, required this.onMenuTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: AppColors.primaryColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: AppColors.primaryColor,
              ),
              child: Center(
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/logo-amm.png",
                      height: 80,
                    ),
                  ],
                ),
              ),
            ),
            // Menu Dashboard
            _buildMenuItem(Icons.dashboard, "Dashboard", () {
              onMenuTap(const Dashboard());
              Navigator.pop(context);
            }),
            _buildExpansionTile(
              Icons.account_balance,
              "Profile Masjid",
              [
                _buildSubMenu(Icons.info, "Data Masjid", () {
                  onMenuTap(const ProfileMasjidWrapper());
                  Navigator.pop(context);
                }),
              ],
            ),
            // Takmir dengan Submenu
            _buildExpansionTile(
              Icons.people,
              "Takmir",
              [
                _buildSubMenu(Icons.people, "Struktur Takmir", () {}),
                _buildSubMenu(Icons.assignment, "Data Takmir", () {}),
                _buildSubMenu(Icons.person_pin, "Jenis Jabatan", () {}),
              ],
            ),
            // Keuangan dengan Submenu
            _buildExpansionTile(
              Icons.attach_money,
              "Keuangan",
              [
                _buildSubMenu(Icons.book, "Buku Kas", () {}),
                _buildSubMenu(Icons.category, "Akun/Kategori", () {}),
                _buildSubMenu(
                    Icons.transfer_within_a_station, "Transaksi", () {}),
                _buildSubMenu(Icons.receipt, "Laporan Transaksi", () {}),
                _buildSubMenu(
                    Icons.account_balance_wallet, "Laporan Saldo", () {}),
              ],
            ),
            // Jamaah dengan Submenu
            _buildExpansionTile(
              Icons.group,
              "Jamaah",
              [
                _buildSubMenu(Icons.bar_chart, "Statistik Jamaah", () {}),
                _buildSubMenu(Icons.people, "Data Jamaah", () {}),
              ],
            ),
            // Inventaris dengan Submenu
            _buildExpansionTile(
              Icons.inventory,
              "Inventaris",
              [
                _buildSubMenu(Icons.inventory_2, "Laporan Inventaris", () {}),
                _buildSubMenu(Icons.list_alt, "Item Barang", () {}),
                _buildSubMenu(Icons.label, "Nama Barang", () {}),
                _buildSubMenu(Icons.category, "Kategori Barang", () {}),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String title, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon, color: AppColors.secondaryColor),
      title: Text(
        title,
        style: GoogleFonts.poppins(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      onTap: onTap,
    );
  }

  // Fungsi untuk membuat item menu dengan sub-menu (dropdown)
  Widget _buildExpansionTile(
      IconData icon, String title, List<Widget> children) {
    return ExpansionTile(
      leading: Icon(icon, color: AppColors.secondaryColor),
      trailing: Icon(Icons.arrow_drop_down, color: AppColors.secondaryColor),
      title: Text(
        title,
        style: GoogleFonts.poppins(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      tilePadding: EdgeInsets.symmetric(horizontal: 16.0),
      childrenPadding: EdgeInsets.only(left: 40),
      backgroundColor: Colors.transparent,
      collapsedBackgroundColor: Colors.transparent,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      collapsedShape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      children: children,
    );
  }

  Widget _buildSubMenu(IconData icon, String title, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon, color: AppColors.secondaryColor),
      title: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: Colors.black54,
          ),
        ),
      ),
      onTap: onTap,
      visualDensity: VisualDensity.compact,
    );
  }
}
