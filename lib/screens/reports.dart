import 'package:flutter/material.dart';

class ReportsScreen extends StatelessWidget {
  const ReportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: Color(0xFF121212),
        elevation: 0,
        title: Text(
          'Sales Reports',
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
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Section Title
            Text(
              'Sales Reports',
              style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            // Report Cards
            _buildReportCard(
              title: 'Daily Sales',
              subtitle: 'Total Orders: 47',
              amount: '₹12,234.50', // Changed to ₹
              time: '2min ago',
              amountColor: Colors.green,
            ),
            _buildReportCard(
              title: 'Weekly Revenue',
              subtitle: 'Growth Rate: +15%',
              amount: '₹45,678.00', // Changed to ₹
              time: '15min ago',
              amountColor: Colors.green,
            ),
            _buildReportCard(
              title: 'Monthly Summary',
              subtitle: 'Total Revenue: ₹158,925.00\nTarget Achievement: 95%', // Changed to ₹
              amount: '',
              time: '1h ago',
              amountColor: Colors.green,
            ),
            SizedBox(height: 24),
            // Sales Trend Section
            _buildSectionHeader('Sales Trend', 'View Details'),
            SizedBox(height: 16),
            _buildChartPlaceholder('Sales Trend Chart'),
            SizedBox(height: 24),
            // Revenue Distribution Section
            _buildSectionHeader('Revenue Distribution', 'View Details'),
            SizedBox(height: 16),
            _buildChartPlaceholder('Revenue Distribution Chart'),
          ],
        ),
      ),
    );
  }

  Widget _buildReportCard({
    required String title,
    required String subtitle,
    required String amount,
    required String time,
    required Color amountColor,
  }) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(color: Colors.white, fontSize: 16)),
                SizedBox(height: 4),
                Text(subtitle, style: TextStyle(color: Colors.white70, fontSize: 14)),
                if (amount.isNotEmpty) ...[
                  SizedBox(height: 8),
                  Text(amount, style: TextStyle(color: amountColor, fontSize: 16, fontWeight: FontWeight.bold)),
                ],
              ],
            ),
          ),
          SizedBox(width: 8),
          Text(time, style: TextStyle(color: Colors.white70, fontSize: 12)),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title, String actionText) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        TextButton(
          onPressed: () {
            // Handle action
          },
          child: Text(
            actionText,
            style: TextStyle(color: Colors.green, fontSize: 14),
          ),
        ),
      ],
    );
  }

  Widget _buildChartPlaceholder(String label) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          label,
          style: TextStyle(color: Colors.white38, fontSize: 14),
        ),
      ),
    );
  }
}
