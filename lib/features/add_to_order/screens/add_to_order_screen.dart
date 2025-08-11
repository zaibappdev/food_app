import 'package:flutter/material.dart';
import '../../../widgets/constants.dart';
import '../../order_details/screens/order_details_screen.dart';
import '../widgets/info.dart';
import '../widgets/required_section_title.dart';
import '../widgets/rounded_checkedbox_list_tile.dart';

class AddToOrderScreen extends StatefulWidget {
  const AddToOrderScreen({super.key});

  @override
  State<AddToOrderScreen> createState() => _AddToOrderScreenState();
}

class _AddToOrderScreenState extends State<AddToOrderScreen> {
  int choiceOfTopCookie = 1;

  int choiceOfBottomCookie = 1;

  int numOfItems = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,

      // App Bar
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(100)),
              ),
              backgroundColor: Colors.black.withOpacity(0.5),
              padding: EdgeInsets.zero,
            ),
            child: const Icon(Icons.close, color: Colors.white),
            onPressed: () => Navigator.pop(context),
          ),
        ),
      ),

      // Body
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Info(),
              const SizedBox(height: defaultPadding),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const RequiredSectionTitle(title: "Choice of top Cookie"),
                    const SizedBox(height: defaultPadding),
                    ...List.generate(
                      choiceOfTopCookies.length,
                      (index) => RoundedCheckboxListTile(
                        isActive: index == choiceOfTopCookie,
                        text: choiceOfTopCookies[index],
                        press: () {
                          setState(() {
                            choiceOfTopCookie = index;
                          });
                        },
                      ),
                    ),
                    const SizedBox(height: defaultPadding),
                    const RequiredSectionTitle(
                      title: "Choice of Bottom Cookie",
                    ),
                    const SizedBox(height: defaultPadding),
                    ...List.generate(
                      choiceOfTopCookies.length,
                      (index) => RoundedCheckboxListTile(
                        isActive: index == choiceOfBottomCookie,
                        text: choiceOfTopCookies[index],
                        press: () {
                          setState(() {
                            choiceOfBottomCookie = index;
                          });
                        },
                      ),
                    ),
                    const SizedBox(height: defaultPadding),
                    // // Num of item
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 40,
                          width: 40,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              padding: EdgeInsets.zero,
                            ),
                            child: const Icon(Icons.remove),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: defaultPadding,
                          ),
                          child: Text(
                            numOfItems.toString().padLeft(2, "0"),
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ),
                        SizedBox(
                          height: 40,
                          width: 40,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              padding: EdgeInsets.zero,
                            ),
                            child: const Icon(Icons.add),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: defaultPadding),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const OrderDetailsScreen(),
                          ),
                        );
                      },
                      child: const Text("Add to Order (\$11.98)"),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: defaultPadding),
            ],
          ),
        ),
      ),
    );
  }

  List<String> choiceOfTopCookies = [
    "Choice of top Cookie",
    "Cookies and Cream",
    "Funfetti",
    "M and M",
    "Red Velvet",
    "Peanut Butter",
    "Snickerdoodle",
    "White Chocolate Macadamia",
  ];
}
