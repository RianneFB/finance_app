import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isHighlight;

  const ActionButton({
    super.key, 
    required this.icon, 
    required this.label, 
    this.isHighlight = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 75,
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: isHighlight ?  Color(0xFFE4F34D): Color(0xFF2A2A2A), 
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Icon(
            icon, 
            color: isHighlight ? const Color.fromARGB(255, 2, 1, 1) : Color.fromARGB(255, 255, 255, 255),
            size: 24,
          ),
          SizedBox(height: 4,),
          Text(
            label,
            style: TextStyle(
              color: isHighlight ? Color.fromARGB(255, 0, 0, 0) : Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.w600,
            )
          )
        ]
      )
    );
  }
}

class ActionButtonRow extends StatelessWidget {
  const ActionButtonRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      children: [
        Expanded(
          child: ActionButton(
            icon: Iconsax.add, 
            label: "Deposit", 
            isHighlight: true,
          )
        ),
        Expanded(
          child: ActionButton(
            icon: Iconsax.send, 
            label: "Send"
          )
        ),
        Expanded(
          child: ActionButton(
            icon: Iconsax.document, 
            label: "Earn"
          ),
        ),
        Expanded(
          child: ActionButton(
            icon: Iconsax.more, 
            label: "Swap"
          ),
        ),
      ]
    );
  }
  
}
