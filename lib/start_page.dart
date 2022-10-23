import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pr_1/constants.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: startPageBackground,
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        SvgPicture.asset('assets/icons/medinow.svg'),
                        const Padding(
                          padding: EdgeInsets.only(top: 10.0),
                          child: Text(
                            "Meditate With Us!",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 50.0),
                          child: ElevatedButton(
                            style: signInButtonStyle,
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, '/SecondPage');
                            },
                            child: const Text(
                              "Sign with Apple",
                              style: btnStartTextStyle,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12.0),
                          child: ElevatedButton(
                            style: continueButtonStyle,
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, '/MenuPage');
                            },
                            child: const Text(
                              "Continue with Email or Phone",
                              style: btnStartTextStyle,
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 5.0, bottom: 40.0),
                          child: TextButton(
                            style: textButtonStyle,
                            onPressed: () {},
                            child: const Text(
                              "Continue With Google",
                              style: btnStartTextStyle,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SizedBox(
                  child: SvgPicture.asset("assets/icons/startPage.svg")),
            ),
          ],
        ),
      ),
    );
  }
}
