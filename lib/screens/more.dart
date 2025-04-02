import 'package:flutter/material.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: Color(0xFF121212),
        elevation: 0,
        title: Text(
          'More Options',
          style: TextStyle(color: Colors.green, fontSize: 24),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.white),
            onPressed: () {
              // Handle notifications
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: [
            _buildOptionCard(Icons.person, 'Profile', 'Manage account settings'),
            _buildOptionCard(Icons.settings, 'Settings', 'App preferences'),
            _buildOptionCard(Icons.group, 'Team', 'Manage staff'),
            _buildOptionCard(Icons.history, 'History', 'Transaction logs'),
            _buildOptionCard(Icons.help, 'Help', 'Support center'),
            _buildOptionCard(Icons.notifications, 'Notifications', 'Manage alerts'),
            _buildOptionCard(Icons.inventory, 'Products', 'Manage inventory'),
            _buildOptionCard(Icons.logout, 'Logout', 'Exit application', color: Colors.red),
          ],
        ),
      ),
      bottomNavigationBar: null,
    );
  }

  Widget _buildOptionCard(IconData icon, String title, String subtitle, {Color color = Colors.green}) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: color, size: 36),
            SizedBox(height: 16),
            Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              subtitle,
              style: TextStyle(color: Colors.white70, fontSize: 12),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
