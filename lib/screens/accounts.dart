import 'package:flutter/material.dart';

class Accounts extends StatefulWidget {
  const Accounts({super.key});

  @override
  State<Accounts> createState() => _AccountsState();
}

class _AccountsState extends State<Accounts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Accounts'),
        backgroundColor: Colors.lightBlue,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context); 
          },
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
          iconSize: 30,
        ),
      ),
      body: Center(
        child: ListView(
          children: const [
            SizedBox(
              height: 30,
            ),
            ListTile(
              leading: Icon(
                Icons.account_balance_wallet_rounded,
                size: 60,
                color: Colors.red,
              ),
              title: Text(
                'Savings Account',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              subtitle: Text(
                'Available Balance',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              trailing: Text(
                'R5,000.00',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.account_balance_wallet_rounded,
                size: 60,
                color: Colors.red,
              ),
              title: Text(
                'Cheque Account',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              subtitle: Text(
                'Available Balance',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              trailing: Text(
                'R2,000.00',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.account_balance_wallet_rounded,
                size: 60,
                color: Colors.red,
              ),
              title: Text(
                'Revolving Credit',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              subtitle: Text(
                'Available Balance',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              trailing: Text(
                'R10,000.00',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
