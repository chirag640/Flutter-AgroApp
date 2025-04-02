import 'package:app/screens/new_bill.dart';
import 'package:flutter/material.dart';

class BillingScreen extends StatelessWidget {
  const BillingScreen({super.key});

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
              'Billing',
              style: TextStyle(color: Colors.green, fontSize: 24),
            ),
            Spacer(),
            Icon(Icons.notifications, color: Colors.white),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Today's Sales Card
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color(0xFF1E1E1E),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Today\'s Sales',
                        style: TextStyle(color: Colors.white70, fontSize: 14),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '₹28,600', // Changed to ₹
                        style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            // Recent Transactions Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recent Transactions',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    // Handle "Add Bill" button press
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NewBillScreen()),
                    );
                  },
                  icon: Icon(Icons.add, color: Colors.white),
                  label: Text('Add Bill'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  _buildTransactionItem(
                    'Premium Seeds Purchase',
                    'Order #PS4821',
                    'Michael Chen',
                    'Today, 14:30',
                    '₹4,800', // Changed to ₹
                    Colors.green,
                  ),
                  _buildTransactionItem(
                    'Garden Tools Set',
                    'Order #GT7842',
                    'Sarah Zhang',
                    'Today, 12:15',
                    '₹8,400', // Changed to ₹
                    Colors.green,
                  ),
                  _buildTransactionItem(
                    'Organic Fertilizer',
                    'Order #OF3391',
                    'David Liu',
                    'Today, 09:45',
                    '₹15,600', // Changed to ₹
                    Colors.green,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: null, // Remove the FloatingNavigationBar
    );
  }

  Widget _buildTransactionItem(String title, String orderId, String customer, String time, String amount, Color amountColor) {
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
                Text(orderId, style: TextStyle(color: Colors.white70, fontSize: 14)),
                SizedBox(height: 4),
                Text(customer, style: TextStyle(color: Colors.white70, fontSize: 14)),
                SizedBox(height: 8),
                Text(time, style: TextStyle(color: Colors.white70, fontSize: 12)),
              ],
            ),
          ),
          Text(
            amount,
            style: TextStyle(color: amountColor, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
