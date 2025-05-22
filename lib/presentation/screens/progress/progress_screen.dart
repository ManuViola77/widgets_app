import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  static const String name = 'progress_screen';

  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Progress Indicators')),
      body: _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: const [
          SizedBox(height: 30),
          Text('Circular Progress Indicator'),
          SizedBox(height: 10),
          CircularProgressIndicator(
            strokeWidth: 3,
            backgroundColor: Colors.black45,
          ),
          SizedBox(height: 20),
          // with end at completition
          Text('Circular Controlled Progress Indicator'),
          SizedBox(height: 10),
          _ControlledProgressIndicator(),
        ],
      ),
    );
  }
}

class _ControlledProgressIndicator extends StatelessWidget {
  const _ControlledProgressIndicator();

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      strokeWidth: 3,
      backgroundColor: Colors.black45,
    );
  }
}
