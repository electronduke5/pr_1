import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pr_1/constants.dart';

class DesignPage extends StatelessWidget {
  const DesignPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Строка с названием и кнопкой назад
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: [
                      _backButton(),
                      Text(
                        '3D Design Basic',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 26,
                            fontWeight: FontWeight.w600,
                            color: DesignPageColors.textColor),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Image.asset('assets/images/design.png'),
                ),
                Row(
                  children: [
                    _iconWithTextWidget(Icons.supervised_user_circle, '4.569'),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: _iconWithTextWidget(Icons.star_half, '4.9'),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: DesignPageColors.primaryVioletColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      child: Text(
                        'Best Seller',
                        style: GoogleFonts.sourceSansPro(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24.0),
                  child: Text(
                    '3D Design Basic',
                    style: GoogleFonts.sourceSansPro(
                      color: DesignPageColors.textColor,
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Text(
                  'In this course you will learn how to build a space to a 3-dimensional product. There are 24 premium learning videos for you.',
                  style: GoogleFonts.sourceSansPro(fontSize: 16),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '24 Lessons (20 hours)',
                        style: GoogleFonts.sourceSansPro(
                            color: DesignPageColors.secondaryTextColor,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'See all',
                        style: GoogleFonts.sourceSansPro(
                          color: DesignPageColors.blue,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  elevation: 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 24.0),
                    child: Row(
                      children: [
                        Image.asset('assets/images/introduction.png'),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Introduction to 3D',
                                style: GoogleFonts.sourceSansPro(
                                    color: DesignPageColors.textColor,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                '20 mins',
                                style: GoogleFonts.sourceSansPro(
                                  color: DesignPageColors.secondaryTextColor,
                                  fontSize: 11.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.check_circle_outline,
                          color: DesignPageColors.blue,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 57.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            backgroundColor: DesignPageColors.primaryVioletColor,
                            shape: const RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(32.0)),
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).pushNamed('/ProfilePage');
                          },
                          child: Text(
                            'Enroll - \$24.99',
                            style: GoogleFonts.sourceSansPro(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _iconWithTextWidget(IconData icon, String text) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: DesignPageColors.onVioletColor,
          borderRadius: BorderRadius.circular(12)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(icon, color: DesignPageColors.primaryVioletColor),
          Text(
            text,
            style: GoogleFonts.sourceSansPro(
                color: DesignPageColors.primaryVioletColor, fontSize: 18),
          ),
        ],
      ),
    );
  }

  Widget _backButton() {
    return Padding(
      padding: const EdgeInsets.only(right: 25.0),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size.zero,
            padding: const EdgeInsets.all(10),
            backgroundColor: DesignPageColors.onVioletColor,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () {},
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: DesignPageColors.primaryVioletColor,
          )),
    );
  }
}
