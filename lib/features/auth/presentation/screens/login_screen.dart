import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:grocify/core/constants/colors.dart';
import 'package:grocify/core/constants/images.dart';
import 'package:grocify/features/auth/presentation/widgets/login_button.dart';

class LoginScreen extends StatelessWidget {
  @Preview(name: 'Login Screen')
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GrocifyBrand.green,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Text(
                    'Grocify',
                    textAlign: .center,
                    style: TextStyle(fontSize: 32),
                  ),
                  Text(
                    'Plan smarter. Shope happier.',
                    textAlign: .center,
                    style: TextStyle(fontSize: 16),
                  ),

                  Container(
                    width: 320,
                    height: 200,
                    padding: .all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: GrocifyBrand.greenSoft),
                      borderRadius: .circular(15),
                    ),
                    child: Image.asset(GImages.loginBanner, fit: .contain),
                  ),
                ],
              ),

              ClipRRect(
                borderRadius: .only(
                  topLeft: .circular(40),
                  topRight: .circular(40),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: GrocifyDarkColors.background,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                  child: Column(
                    crossAxisAlignment: .center,
                    children: [
                      Padding(
                        padding: .symmetric(vertical: 14),
                        child: Container(
                          padding: .symmetric(vertical: 4, horizontal: 12),
                          decoration: BoxDecoration(
                            color: GrocifyBrand.green.withValues(alpha: 0.2),
                            borderRadius: .circular(100),
                          ),
                          child: Text(
                            'Welcome Back'.toUpperCase(),
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Text(
                          'Choose a social provider and jump right into your personalized grocery experience.',
                          textAlign: .center,
                          style: TextStyle(fontSize: 12),
                        ),
                      ),

                      Padding(
                        padding: .symmetric(vertical: 8),
                        child: Column(
                          children: [
                            GLoginButton(buttonText: 'Continue with Google'),
                            SizedBox(height: 16.0),
                            GLoginButton(buttonText: 'Continue with Github'),
                          ],
                        ),
                      ),

                      SizedBox(height: 12),
                      Text(
                        'By continuing, you agree to our Terms and Privacy Policy.',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
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
