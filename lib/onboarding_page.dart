import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,

        decoration: BoxDecoration(
          color: const Color(0xFF2c444c),
          image: const DecorationImage(
            image: AssetImage('assets/getStarted.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            
          Positioned(
            bottom: 80,
            left: 50,
            right: 50,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFdf7350),
                
                ),
                onPressed: () {
                  Navigator.push(context,
                MaterialPageRoute(
                builder: (context) => const Homepage()),
            );
                  
                },
                child: const Text(
                  'Get Started',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 20,
                ),
              ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
