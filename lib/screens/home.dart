import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: Color(0xFF121212),
        elevation: 0,
        title: Row(
          children: [
            Text(
              'logo',
              style: TextStyle(color: Colors.green, fontSize: 24),
            ),
            Spacer(),
            Icon(Icons.notifications, color: Colors.white),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top Cards
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildCard('Today\'s Sales', '₹3,847', '+12.5%', Colors.green),
                _buildCard('Inventory Value', '₹24,650', '-2.3%', Colors.red),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildCard('Low Stock', '8 items', 'Alert', Colors.orange),
                _buildCard('Pending Orders', '12', 'View all', Colors.blue),
              ],
            ),
            SizedBox(height: 24),
            // Quick Actions
            Text(
              'Quick Actions',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildQuickAction(Icons.add, 'New Item'),
                _buildQuickAction(Icons.receipt, 'Quick Bill'),
                _buildQuickAction(Icons.person_add, 'Add Customer'),
                _buildQuickAction(Icons.qr_code_scanner, 'Scan Code'),
              ],
            ),
            SizedBox(height: 24),
            // Recent Activities
            Text(
              'Recent Activities',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(height: 16),
            _buildActivityCard('New Sale', 'Order #2847 - Michael Anderson', '₹234.50', '2min ago'),
            _buildActivityCard('Inventory Update', 'Premium Seeds Stock -50', 'Low Stock Warning', '15min ago'),
            _buildActivityCard('New Customer', 'Sarah Williams added', 'Premium Member', '1h ago'),
          ],
        ),
      ),
      bottomNavigationBar: null, // Remove the FloatingNavigationBar
    );
  }

  Widget _buildCard(String title, String value, String subtitle, Color subtitleColor) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Color(0xFF1E1E1E),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(color: Colors.white70, fontSize: 14)),
            SizedBox(height: 8),
            Text(value, style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text(subtitle, style: TextStyle(color: subtitleColor, fontSize: 14)),
          ],
        ),
      ),
    );
  }

  Widget _buildQuickAction(IconData icon, String label) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Color(0xFF1E1E1E),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: Colors.white),
        ),
        SizedBox(height: 8),
        Text(label, style: TextStyle(color: Colors.white70, fontSize: 12)),
      ],
    );
  }

  Widget _buildActivityCard(String title, String description, String status, String time) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(color: Colors.white, fontSize: 16)),
                SizedBox(height: 4),
                Text(description, style: TextStyle(color: Colors.white70, fontSize: 14)),
                SizedBox(height: 8),
                Text(status, style: TextStyle(color: Colors.green, fontSize: 14)),
              ],
            ),
          ),
          Text(time, style: TextStyle(color: Colors.white70, fontSize: 12)),
        ],
      ),
    );
  }
}
