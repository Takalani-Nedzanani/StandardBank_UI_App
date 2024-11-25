import 'package:flutter/material.dart';

class Passcode extends StatelessWidget {
  const Passcode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[700],
      appBar: AppBar(
        title: const Text('Provide the App Code'),
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
        child: Column(
          children: [
            const SizedBox(height: 100),
            const Icon(
              Icons.key,
              size: 100,
              color: Colors.white,
            ),
            const SizedBox(height: 30),
            const Text(
              'Enter Your App Code',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                const SizedBox(width: 25),
                Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                const SizedBox(width: 25),
                Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                const SizedBox(width: 25),
                Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                const SizedBox(width: 25),
                Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              'Forgot your app code?',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Previous Arrow
                IconButton(
                  onPressed: () {
                    Navigator.pop(context); 
                  },
                  icon: const Icon(Icons.arrow_back),
                  color: Colors.white,
                  iconSize: 40,
                ),
                // Next Arrow
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(
                        context, '/accounts'); 
                  },
                  icon: const Icon(Icons.arrow_forward),
                  color: Colors.white,
                  iconSize: 40,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
