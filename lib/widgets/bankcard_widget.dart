// ignore: file_names
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key, 
  required this.cardBalance, 
  required this.cardNumber, 
  required this.gradientColor1, 
  required this.gradientColor2,
  });

  final double cardBalance;
  final String cardNumber;
  final Color gradientColor1;
  final Color gradientColor2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: Container(
        height: 230,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          //color: Colors.brown,
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [gradientColor1 , gradientColor2]
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Card balance',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        decoration: const BoxDecoration(
                        image: DecorationImage(
                            image:AssetImage('assets/wifi-signal.png'),
                            opacity: 0.5
                             ,),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: const BoxDecoration(
                          
                          shape: BoxShape.circle,
                          color: Colors.grey,
                          image: DecorationImage(
                            opacity: 0.5,
                            image:AssetImage('assets/mastercard.png'),
                            
                           ),
                        ),
                      ),
                

                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                '\$ $cardBalance',
                style: const TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                cardNumber,
                style: const TextStyle(
                  fontSize: 22,
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
