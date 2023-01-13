import 'package:flutter/material.dart';

class ListCard extends StatelessWidget {
  const ListCard({super.key, required this.title, required this.price, required this.icon});
  final String title;
  final double price;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              //profile container photo
              Container(
                height: 40,
                width: 40,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFF060606), Color(0xFF2c444c)],
                  ),
                  borderRadius: BorderRadius.circular(13),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xFFdf7350),
                      blurRadius: 1.0,
                    ),
                  ],
                ),
                child: Center(
                  child: Icon(
                    icon,
                    color: const Color(0xFF74aaa6),
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              //text
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    '01:41 PM Today',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Text(
            '-\$ $price',
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
