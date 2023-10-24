import 'package:flutter/material.dart';

class CaregoryCard extends StatelessWidget {
  const CaregoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 16,
      ),
      child: Container(
        height: 85,
        width: 160,
        decoration: BoxDecoration(
          image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/entertaiment.avif')),
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Center(
          child: Text(
            'Sporst',
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
