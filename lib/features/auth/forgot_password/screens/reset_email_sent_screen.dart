import 'package:flutter/material.dart';
import '../../../../components/welcome_text.dart';
import '../../../../widgets/constants.dart';

class ResetEmailSentScreen extends StatelessWidget {
  const ResetEmailSentScreen({super.key});

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
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const WelcomeText(
              title: "Reset email sent",
              text:
                  "We have sent a instructions email to \ntheflutterway@email.com.",
            ),
            const SizedBox(height: defaultPadding),
            ElevatedButton(onPressed: () {}, child: const Text("Send again")),
          ],
        ),
      ),
    );
  }
}
