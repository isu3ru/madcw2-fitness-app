import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('running it');
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/logo-lg.png'),
          const SizedBox(
            height: 16.0,
          ),
          const Text(
            'Please wait..',
            style: TextStyle(fontSize: 32.0),
          ),
          const SizedBox(
            height: 16.0,
          ),
          const CircularProgressIndicator()
        ],
      ),
    );
  }
}
