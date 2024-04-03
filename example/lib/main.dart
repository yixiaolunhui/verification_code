import 'package:flutter/material.dart';
import 'package:verification_code/verification_code.dart';

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
      home: const MyHomePage(title: 'Flutter Verification Code'),
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
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            widget.title,
            style: const TextStyle(fontSize: 22),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              VerificationCode(
                height: 50,
                style: CodeStyle.form,
                maxLength: 4,
                itemWidth: 50,
                onCompleted: (String value) {
                  print("CodeStyle.form value=$value");
                },
              ),
              const SizedBox(
                height: 50,
              ),
              VerificationCode(
                height: 50,
                style: CodeStyle.rectangle,
                maxLength: 4,
                itemWidth: 50,
                onCompleted: (String value) {
                  print("CodeStyle.rectangle value=$value");
                },
              ),
              const SizedBox(
                height: 50,
              ),
              VerificationCode(
                height: 50,
                style: CodeStyle.line,
                maxLength: 6,
                itemWidth: 30,
                itemSpace: 20,
                onCompleted: (String value) {
                  print("CodeStyle.line value=$value");
                },
              ),
              const SizedBox(
                height: 50,
              ),
              VerificationCode(
                height: 50,
                style: CodeStyle.circle,
                maxLength: 6,
                itemWidth: 30,
                onCompleted: (String value) {
                  print("CodeStyle.circle value=$value");
                },
              ),
            ],
          ),
        ));
  }
}

