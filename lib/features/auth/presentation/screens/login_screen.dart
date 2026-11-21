import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:grocify/core/common/widgets/bottom_nav.dart';
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
        child: Column(
          children: [
            Padding(
              padding: .all(24),
              child: Column(
                children: [
                  Text(
                    'Grocify App',
                    textAlign: .center,
                    style: TextStyle(fontSize: 32),
                  ),
                  Text(
                    'Plan smarter. Shope happier than ever before.',
                    textAlign: .center,
                  ),

                  SizedBox(height: 12),
                  Container(
                    width: 420,
                    height: 280,
                    padding: .all(10),
                    decoration: BoxDecoration(
                      color: GrocifyLightColors.background.withValues(
                        alpha: 0.1,
                      ),
                      border: Border.all(
                        color: GrocifyBrand.greenSoft.withValues(alpha: 0.3),
                      ),
                      borderRadius: .circular(20),
                    ),
                    child: Image.asset(GImages.loginBanner, fit: .contain),
                  ),
                ],
              ),
            ),

            Expanded(
              child: ClipRRect(
                borderRadius: .only(
                  topLeft: .circular(40),
                  topRight: .circular(40),
                ),
                child: Container(
                  width: .infinity,
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
                            GLoginButton(
                              buttonText: 'Continue with Google',
                              icon: GImages.google,
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => BottomNav(),
                                  ),
                                );
                              },
                            ),

                            SizedBox(height: 16.0),
                            GLoginButton(
                              buttonText: 'Continue with Github',
                              icon: GImages.github,
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 12),
                      Text(
                        'By continuing, you agree to our Terms and Privacy Policy.',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
