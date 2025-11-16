import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      appBar: AppBar(  
        title: const Text('My Widget'),  
      ),  
      body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
        child: Row(  
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Image.network('https://i.pravatar.cc/100?img=4'),
                  Text('Paijo'),
                ],
              ),
              Column(
                children: [
                  Image.network('https://i.pravatar.cc/100?img=5'),
                  Text('Tuginem'),
                ],
              ),
              Column(
                children: [
                  Image.network('https://i.pravatar.cc/100?img=6'),
                  Text('Selamet'),
                ],
              ),
              Column(
                children: [
                  Image.network('https://i.pravatar.cc/100?img=7'),
                  Text('Bambang'),
                ],
              ),
              Column(
                children: [
                  Image.network('https://i.pravatar.cc/100?img=8'),
                  Text('Ridho'),
                ],
              ),
              Column(
                children: [
                  Image.network('https://i.pravatar.cc/100?img=9'),
                  Text('Rizky'),
                ],
              ),
            ],
        
        ),
      ),  
    );
  }
}
