import 'package:flutter/material.dart';
import 'package:standardbank_ui/screens/accounts.dart';
import 'package:standardbank_ui/screens/passcode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        '/passcode': (context) => const Passcode(),
        '/accounts': (context) => const Accounts(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title: const Text('Welcome'),
          backgroundColor: Colors.lightBlue,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.close),
            color: Colors.white,
            iconSize: 30,
          ),
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(height: 100),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 100,
                    child: Image(
                      image: AssetImage('assets/images/StandardBankLogo.png'),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                'Version 3.40.6',
                style: TextStyle(
                  fontSize: 10.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.dashboard,
                        size: 50,
                        color: Colors.white,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.help_rounded,
                        size: 50,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                width: 300,
                color: Colors.lightBlue,
                padding: const EdgeInsets.all(20.0),
                margin: const EdgeInsets.all(20.0),
                child: const Text(
                  'Hello John',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/passcode');
                },
                child: Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: const Center(
                    child: Text(
                      'SIGN IN',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'By signing in, I agree to the T&C\'s',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PasscodePage extends StatelessWidget {
  const PasscodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enter Passcode'),
      ),
      body: const Center(
        child: Text(
          'This is the Passcode Page',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
