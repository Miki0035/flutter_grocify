import 'package:flutter/material.dart';
import 'package:grocify/core/constants/colors.dart';
import 'package:grocify/features/auth/presentation/widgets/login_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
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

                  Positioned(
                    bottom: 1,
                    child: ClipRRect(
                      borderRadius: .circular(15),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Column(
                          crossAxisAlignment: .center,
                          children: [
                            Padding(
                              padding: .symmetric(vertical: 14),
                              child: Container(
                                padding: .symmetric(
                                  vertical: 4,
                                  horizontal: 12,
                                ),
                                decoration: BoxDecoration(
                                  color: GrocifyBrand.green.withValues(
                                    alpha: 0.2,
                                  ),
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
                                  ),
                                  SizedBox(height: 16.0),
                                  GLoginButton(
                                    buttonText: 'Continue with Github',
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
