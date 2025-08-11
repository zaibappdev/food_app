import 'package:flutter/material.dart';
import '../../../../components/welcome_text.dart';
import '../../../../widgets/constants.dart';
import '../widgets/forgot_pass_form.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // App Bar
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: const Text("Forgot Password"),
      ),

      // Body
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WelcomeText(
              title: "Forgot password",
              text:
                  "Enter your email address and we will \nsend you a reset instructions.",
            ),
            SizedBox(height: defaultPadding),
            ForgotPassForm(),
          ],
        ),
      ),
    );
  }
}
