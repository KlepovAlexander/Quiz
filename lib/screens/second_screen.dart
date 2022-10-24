import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const Expanded(
              child: Center(
                child: Text('Гоша мыл сегодня попу?'),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                style: const ButtonStyle(),
                onPressed: () {},
                child: const Text('нет не мыл'),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                style: const ButtonStyle(),
                onPressed: () {},
                child: const Text('нет не мыл'),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                style: const ButtonStyle(),
                onPressed: () {},
                child: const Text('нет не мыл'),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                style: const ButtonStyle(),
                onPressed: () {},
                child: const Text('нет не мыл'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
