import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../widgets/constants.dart';
import '../../search/screens/search_screen.dart';
import '../widgets/featured_items.dart';
import '../widgets/iteams.dart';
import '../widgets/restaurrant_info.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // Body
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 0,
        actions: [
          IconButton(
            icon: SvgPicture.asset("assets/icons/share.svg"),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset("assets/icons/search.svg"),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SearchScreen()),
            ),
          ),
        ],
      ),

      // Body
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: defaultPadding / 2),
              RestaurantInfo(),
              SizedBox(height: defaultPadding),
              FeaturedItems(),
              Items(),
            ],
          ),
        ),
      ),
    );
  }
}
