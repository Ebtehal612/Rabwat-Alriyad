import 'package:flutter/material.dart';

class TestImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Image Test')),
      body: Column(
        children: [
          // Test hashee.png
          Container(
            height: 200,
            width: double.infinity,
            child: Image.asset(
              'assets/images/hashee.png',
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) {
                print('Error loading hashee.png: $error');
                return Container(
                  color: Colors.red,
                  child: Center(
                    child: Text('hashee.png failed to load'),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 20),
          // Test home.jpg (we know this exists)
          Container(
            height: 200,
            width: double.infinity,
            child: Image.asset(
              'assets/images/home.jpg',
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) {
                print('Error loading home.jpg: $error');
                return Container(
                  color: Colors.blue,
                  child: Center(
                    child: Text('home.jpg failed to load'),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}