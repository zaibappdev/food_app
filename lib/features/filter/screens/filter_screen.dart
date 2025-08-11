import 'package:flutter/material.dart';
import '../../../widgets/constants.dart';
import '../widgets/categories.dart';
import '../widgets/dietaries.dart';
import '../widgets/price_range.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // App Bar
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: const Text("Filters"),
      ),

      // Body
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: defaultPadding),
              Categories(),
              SizedBox(height: defaultPadding),
              Dietaries(),
              SizedBox(height: defaultPadding),
              PriceRange(),
              SizedBox(height: defaultPadding),
            ],
          ),
        ),
      ),
    );
  }
}
