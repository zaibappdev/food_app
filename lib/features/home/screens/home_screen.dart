import 'package:flutter/material.dart';
import '../../../components/cards/big_card_image_slide.dart';
import '../../../components/cards/restaurant_info_big_card.dart';
import '../../../components/section_title.dart';
import '../../../widgets/constants.dart';
import '../../../widgets/demo_data.dart';
import '../../details/screens/details_screen.dart';
import '../../featured/screens/featurred_screen.dart';
import '../../filter/screens/filter_screen.dart';
import '../widgets/medium_card_list.dart';
import '../widgets/promotion_banner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // App Bar
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 0,
        leading: const SizedBox(),
        title: Column(
          children: [
            Text(
              "Delivery to".toUpperCase(),
              style: Theme.of(
                context,
              ).textTheme.bodySmall!.copyWith(color: primaryColor),
            ),
            const Text("San Francisco", style: TextStyle(color: Colors.black)),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FilterScreen()),
              );
            },
            child: Text("Filter", style: Theme.of(context).textTheme.bodyLarge),
          ),
        ],
      ),

      // Body
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: defaultPadding),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: BigCardImageSlide(images: demoBigImages),
              ),
              const SizedBox(height: defaultPadding * 2),
              SectionTitle(
                title: "Featured Partners",
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FeaturedScreen(),
                  ),
                ),
              ),
              const SizedBox(height: defaultPadding),
              const MediumCardList(),
              const SizedBox(height: 20),
              // Banner
              const PromotionBanner(),
              const SizedBox(height: 20),
              SectionTitle(
                title: "Best Pick",
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FeaturedScreen(),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const MediumCardList(),
              const SizedBox(height: 20),
              SectionTitle(title: "All Restaurants", press: () {}),
              const SizedBox(height: 16),

              // Demo list of Big Cards
              ...List.generate(
                // For demo we use 4 items
                3,
                (index) => Padding(
                  padding: const EdgeInsets.fromLTRB(
                    defaultPadding,
                    0,
                    defaultPadding,
                    defaultPadding,
                  ),
                  child: RestaurantInfoBigCard(
                    // Images are List<String>
                    images: demoBigImages..shuffle(),
                    name: "McDonald's",
                    rating: 4.3,
                    numOfRating: 200,
                    deliveryTime: 25,
                    foodType: const ["Chinese", "American", "Deshi food"],
                    press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DetailsScreen(),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
