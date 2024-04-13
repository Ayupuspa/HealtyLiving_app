import 'package:flutter/material.dart';

class ProfileChat extends StatelessWidget {
  const ProfileChat({Key? key, required String contactName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Saya'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/images/logo_aplikasi.png'),
            ),
            SizedBox(height: 20),
            _buildInfoCard(
              icon: Icons.account_circle,
              label: 'Nama Lengkap',
              value: 'Dr. Putu Arya Nugraha Sp.OG',
            ),
            _buildInfoCard(
              icon: Icons.school,
              label: 'Pendidikan',
              value: 'Harvad University',
            ),
            _buildInfoCard(
              icon: Icons.business,
              label: 'Alamat Praktek',
              value: 'Jalan Dewi Sartika, 12A Singaraja',
            ),
            _buildInfoCard(
              icon: Icons.home,
              label: 'Alamat Tempat Tinggal',
              value: 'Jakarta Barat Blok M nomor 14',
            ),
            _buildInfoCard(
              icon: Icons.phone,
              label: 'Nomor HP',
              value: '088123456387',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard({required IconData icon, required String label, required String value}) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      elevation: 2,
      child: ListTile(
        leading: Icon(icon, color: Colors.blue),
        title: Text(label),
        subtitle: Text(value),
      ),
    );
  }
}
