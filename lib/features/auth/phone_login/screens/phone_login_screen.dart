import 'package:flutter/material.dart';
import '../../../../components/buttons/primary_button.dart';
import '../../../../components/welcome_text.dart';
import '../../../../widgets/constants.dart';
import 'number_verify_screen.dart';

class PhoneLoginScreen extends StatefulWidget {
  const PhoneLoginScreen({super.key});

  @override
  State<PhoneLoginScreen> createState() => _PhoneLoginScreenState();
}

class _PhoneLoginScreenState extends State<PhoneLoginScreen> {
  final _formKey = GlobalKey<FormState>();

  String? phoneNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // App Bar
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: const Text("Login to Foodly"),
      ),

      // Body
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const WelcomeText(
                title: "Get started with Foodly",
                text:
                    "Enter your phone number to use foodly \nand enjoy your food :)",
              ),
              const SizedBox(height: defaultPadding),
              Form(
                key: _formKey,
                child: TextFormField(
                  validator: phoneNumberValidator.call,
                  autofocus: true,
                  onSaved: (value) => phoneNumber = value,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium!.copyWith(color: titleColor),
                  cursorColor: primaryColor,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    hintText: "Phone Number",
                    contentPadding: kTextFieldPadding,
                  ),
                ),
              ),
              const Spacer(),
              // Sign Up Button
              PrimaryButton(
                text: "Sign Up",
                press: () {
                  if (_formKey.currentState!.validate()) {
                    // If all data are correct then save data to out variables
                    _formKey.currentState!.save();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const NumberVerifyScreen(),
                      ),
                    );
                  } else {}
                },
              ),
              const SizedBox(height: defaultPadding),
            ],
          ),
        ),
      ),
    );
  }
}
