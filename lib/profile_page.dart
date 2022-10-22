import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pr_1/constants.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                //Строка с названием и кнопкой назад
                Padding(
                  padding: const EdgeInsets.only(bottom: 29),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_back),
                        color: ProfilePageColors.primaryVioletColor,
                        iconSize: 26,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text(
                          'Organizer',
                          style: GoogleFonts.sourceSansPro(
                              fontSize: 26,
                              fontWeight: FontWeight.w600,
                              color: ProfilePageColors.textColor),
                        ),
                      ),
                      const Spacer(),
                      _buttonMoreInfo(),
                    ],
                  ),
                ),
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/albert.png'),
                  radius: 60,
                  backgroundColor: Colors.transparent,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Text(
                    'Albert Flores',
                    style: GoogleFonts.sourceSansPro(
                      color: ProfilePageColors.textColor,
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _statisticProfileWidget('2.368', 'Followers'),
                      const VerticalDivider(
                        thickness: 1,
                        color: ProfilePageColors.dividerColor,
                      ),
                      _statisticProfileWidget('346', 'Following'),
                      const VerticalDivider(
                        thickness: 1,
                        color: ProfilePageColors.dividerColor,
                      ),
                      _statisticProfileWidget('13', '  Events  '),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 24.0),
                  child: Divider(
                    thickness: 1,
                    color: ProfilePageColors.dividerColor,
                  ),
                ),
                _rowWithMainButtons(),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 24.0),
                  child: Divider(
                    thickness: 1,
                    color: ProfilePageColors.dividerColor,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 4.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            elevation: 0,
                            backgroundColor:
                                ProfilePageColors.primaryVioletColor,
                            shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(32.0)),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Follow',
                            style: GoogleFonts.sourceSansPro(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: _outlinedButton('Events',
                          const EdgeInsets.symmetric(horizontal: 4.0)),
                    ),
                    Expanded(
                      child: _outlinedButton(
                          'Reviews', const EdgeInsets.only(left: 4.0)),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24.0),
                  child: Row(
                    children: [
                      Text(
                        'About',
                        style: GoogleFonts.sourceSansPro(
                          fontSize: 20,
                          color: ProfilePageColors.secondaryTextColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                        style: GoogleFonts.sourceSansPro(
                          fontSize: 16,
                          color: ProfilePageColors.secondaryTextColor,
                        ),
                      ),
                      TextSpan(
                        text: 'Read more...',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 16,
                            color: ProfilePageColors.primaryVioletColor,
                            fontWeight: FontWeight.w600),
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

  Widget _outlinedButton(String title, EdgeInsets padding) {
    return Padding(
      padding: padding,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 8),
          side: const BorderSide(
              width: 2, color: ProfilePageColors.primaryVioletColor),
          elevation: 0,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(32.0)),
          ),
        ),
        onPressed: () {},
        child: Text(
          title,
          style: GoogleFonts.sourceSansPro(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: ProfilePageColors.primaryVioletColor),
        ),
      ),
    );
  }

  Row _rowWithMainButtons() {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 4.0),
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 12),
                elevation: 0,
                backgroundColor: ProfilePageColors.primaryVioletColor,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
              ),
              onPressed: () {},
              icon: const Icon(Icons.person_add_alt_1, size: 18),
              label: Text(
                'Follow',
                style: GoogleFonts.sourceSansPro(
                    fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 4.0),
            child: OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 12),
                side: const BorderSide(
                    width: 2, color: ProfilePageColors.primaryVioletColor),
                elevation: 0,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
              ),
              onPressed: () {},
              icon: const Icon(
                Icons.message,
                color: ProfilePageColors.primaryVioletColor,
                size: 18,
              ),
              label: Text(
                'Follow',
                style: GoogleFonts.sourceSansPro(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: ProfilePageColors.primaryVioletColor),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _statisticProfileWidget(String count, String group) {
    return Column(
      children: [
        Text(
          count,
          style: GoogleFonts.sourceSansPro(
            color: ProfilePageColors.textColor,
            fontSize: 26,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          group,
          style: GoogleFonts.sourceSansPro(
            color: ProfilePageColors.textColor,
            fontSize: 16,
          ),
        ),
      ],
    );
  }

  ElevatedButton _buttonMoreInfo() {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size.zero,
          padding: const EdgeInsets.all(10),
          backgroundColor: ProfilePageColors.onVioletColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () {},
        child: const Icon(
          Icons.more_vert,
          color: ProfilePageColors.primaryVioletColor,
        ));
  }
}
