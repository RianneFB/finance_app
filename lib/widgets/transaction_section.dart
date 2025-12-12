import 'package:flutter/material.dart';
import 'transaction_item.dart';
import 'package:iconsax/iconsax.dart';

class TransactionsSection extends StatelessWidget {
  const TransactionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Text(
              "Transactions",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Spacer(),
            Text(
              "See All",
              style: TextStyle(
                fontSize: 14,
                color: Color.fromARGB(255, 145, 212, 98),
              ),
            ),
          ],
        ),

        const SizedBox(height: 16),

        const TransactionItem(
          title: "ADOBE",
          subtitle: "9:00am 08 Mar 2025",
          amount: "-\$100.26",
          isPositive: false,
          icon: Iconsax.activity,
        ),

        SizedBox(height: 14),

        const TransactionItem(
          title: "Deposit",
          subtitle: "9:00am 08 Mar 2025",
          amount: "+\$14.00",
          isPositive: true,
          icon: Iconsax.add,
        ),

        SizedBox(height: 30),
      ],
    );
  }
}
