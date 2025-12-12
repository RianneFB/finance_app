import "package:finance_app/widgets/currency_card.dart";
import "package:finance_app/widgets/custom_app_bar.dart";
import "package:finance_app/widgets/total_value.dart";
import "package:finance_app/widgets/transaction_section.dart";
import "package:finance_app/widgets/analytics_section.dart";
import "package:finance_app/widgets/bottom_bar.dart";
import 'package:finance_app/widgets/action_buttons_widget.dart';
import 'package:finance_app/widgets/transaction_item.dart';
import "package:flutter/material.dart";
import "package:flutter/services.dart";
import 'package:iconsax/iconsax.dart';

import "../widgets/action_buttons_widget.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Color(0xFF1A1A1A),
        systemNavigationBarColor: Color(0xFF1E1E1E),
        systemNavigationBarIconBrightness: Brightness.light,
      ),
      child: Stack(
        children: [
          Scaffold(
            backgroundColor: Color(0xFF1A1A1A),
            body: SafeArea(
              child: Column(
                children: [
                  const CustomAppBar(),
                  Expanded(
                    child: SingleChildScrollView(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20),
                          const TotalValueSection(),
                          SizedBox(height: 24),
                          ActionButtonRow(),
                          SizedBox(height: 5),
                          CurrencyCardSection(),
                          const TransactionsSection(),
                          const AnalyticsSection(),
                          const BottomNavBar(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
