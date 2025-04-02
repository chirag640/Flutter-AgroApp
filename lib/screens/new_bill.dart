import 'package:flutter/material.dart';

class NewBillScreen extends StatelessWidget {
  const NewBillScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: Color(0xFF121212),
        elevation: 0,
        title: Text(
          'New Bill',
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Customer Name Input
              _buildInputField(
                label: 'Customer Name',
                hintText: 'Enter customer name',
                icon: Icons.person,
              ),
              SizedBox(height: 16),
              // Items Dropdown
              _buildDropdownField(
                label: 'Items',
                hintText: 'Select item',
                icon: Icons.shopping_cart,
              ),
              SizedBox(height: 16),
              // Phone Number Input
              _buildInputField(
                label: 'Phone Number',
                hintText: 'Enter phone number',
                icon: Icons.phone,
              ),
              SizedBox(height: 24),
              // Payment Details Card
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(0xFF1E1E1E),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Payment Details',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    SizedBox(height: 16),
                    _buildPaymentDetailRow('Subtotal', '₹0'), // Changed to ₹
                    SizedBox(height: 8),
                    _buildPaymentDetailRow('Tax (10%)', '₹0'), // Changed to ₹
                    Divider(color: Colors.white24),
                    _buildPaymentDetailRow(
                      'Total Amount',
                      '₹0', // Changed to ₹
                      isBold: true,
                      textColor: Colors.green,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
              // Submit Button
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Handle bill submission
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    'Submit Bill',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInputField({required String label, required String hintText, required IconData icon}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(color: Colors.white70, fontSize: 14),
        ),
        SizedBox(height: 8),
        TextField(
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.white38),
            prefixIcon: Icon(icon, color: Colors.white70),
            filled: true,
            fillColor: Color(0xFF1E1E1E),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDropdownField({required String label, required String hintText, required IconData icon}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(color: Colors.white70, fontSize: 14),
        ),
        SizedBox(height: 8),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: Color(0xFF1E1E1E),
            borderRadius: BorderRadius.circular(8),
          ),
          child: DropdownButtonFormField<String>(
            dropdownColor: Color(0xFF1E1E1E),
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(icon, color: Colors.white70),
            ),
            hint: Text(
              hintText,
              style: TextStyle(color: Colors.white38),
            ),
            items: [
              DropdownMenuItem(value: 'Item 1', child: Text('Item 1')),
              DropdownMenuItem(value: 'Item 2', child: Text('Item 2')),
              DropdownMenuItem(value: 'Item 3', child: Text('Item 3')),
            ],
            onChanged: (value) {
              // Handle item selection
            },
          ),
        ),
      ],
    );
  }

  Widget _buildPaymentDetailRow(String label, String value, {bool isBold = false, Color textColor = Colors.white70}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(color: Colors.white70, fontSize: 14),
        ),
        Text(
          value,
          style: TextStyle(
            color: textColor,
            fontSize: 16,
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ],
    );
  }
}
