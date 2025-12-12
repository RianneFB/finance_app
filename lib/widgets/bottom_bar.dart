import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 28, vertical: 14),
      decoration: BoxDecoration(
        color: Color(0xFF1A1A1A),
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Iconsax.home, color: Colors.white, size: 26),
          Icon(Iconsax.card, color: Colors.white54, size: 26),

          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Color(0xFFD8FF00),
              shape: BoxShape.circle,
            ),
            child: Icon(Iconsax.bitcoin_convert, color: Colors.black, size: 26),
          ),

          Icon(Iconsax.activity, color: Colors.white54, size: 26),
          Icon(Iconsax.category, color: Colors.white54, size: 26),
        ],
      ),
    );
  }
}
