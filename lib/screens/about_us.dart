import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                'About React Labs',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                'At React Labs, we pride ourselves on being at the forefront of digital transformation. As a premier development shop, our mission is to craft bespoke software solutions tailored to the unique needs of businesses, both large and small. Our expertise spans across a myriad of platforms, with a special emphasis on mobile and web application development.',
              ),
              SizedBox(height: 20),
              Text(
                'Our technical acumen is deeply rooted in our extensive experience with Flutter and Dart. These cutting-edge technologies empower us to deliver seamless, cross-platform applications that not only look stunning but also perform exceptionally, ensuring an unparalleled user experience.',
              ),
              SizedBox(height: 20),
              Text(
                'FlutterBots serves as a testament to our prowess in Flutter and Dart development. This demo app encapsulates the quality, innovation, and proficiency that React Labs brings to every project. It\'s a window into the potential and capabilities that we can unlock for businesses looking to make a mark in the digital realm.',
              ),
              SizedBox(height: 20),
              Text(
                'If you\'re intrigued by the possibilities that Flutter and Dart offer, or if you\'re on the lookout for a seasoned team to bring your digital vision to life, we\'re just a message away.',
              ),
              SizedBox(height: 20),
              Text(
                '• Website: www.reactlabs.io',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                '• Email: info@reactlabs.io',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              // You can continue adding more content as needed
              // ...
            ],
          ),
        ),
      ),
    );
  }
}
