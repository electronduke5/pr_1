import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pr_1/constants.dart';
import 'package:pr_1/custom_icons.dart';

class FourthPage extends StatelessWidget {
  const FourthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.only(top:7.0, left:10.0),
          child: Ink(
            decoration: ShapeDecoration(
              shape: const CircleBorder(),
              color: Colors.white.withOpacity(0.7),
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
      backgroundColor: whiteSmokeBackground,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 1.0),
                  child: Container(
                      decoration: const BoxDecoration(
                        //borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color: whaleBackground,
                      ),
                      child: ClipRRect(
                        //borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset(
                          "assets/images/whale.png",
                        ),
                      )),
                ),
                Positioned(
                  top: 295,
                  child: Container(
                    width: 1000,
                    height: 1000,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: whiteSmokeBackground,
                    ),
                  ),
                ),
                Positioned(
                  top: 240,
                  child: Container(
                    width: 103,
                    height: 103,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: whiteSmokeBackground,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: const ShapeDecoration(
                          shape: CircleBorder(),
                          color: orangePlayButton,
                        ),
                        child: IconButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, '/FifthPage');
                          },
                          icon: const Icon(Icons.play_arrow, color: whiteSmokeBackground, size: 64,),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 5.0),
              child: Text(
                "Secrets of Atlantis",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    fontFamily: "Montserrat"),
              ),
            ),
            OutlinedButton(
              onPressed: () {},
              style: outlineFollowButtonStyle,
              child: const Text(
                "Follow",
                style: TextStyle(
                    fontSize: 17.0,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                width: 400,
                height: 150,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0)),
                  color: purpleCardBackground,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    radius: 25,
                                    child: Image.asset(
                                      "assets/images/avatar1.png",
                                      width: 110,
                                      height: 110,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  right: 10.0, top: 5.0),
                              child: Column(
                                children: [
                                  const Text(
                                    "Codin",
                                    style: TextStyle(
                                        fontFamily: "Montserrat",
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5.0),
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(4.0)),
                                        color: darkViolet,
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 2.5, horizontal: 6),
                                        child: Text(
                                          "Host",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: "Montserrat",
                                              fontSize: 15.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 3.0),
                                child: Column(
                                  children: const [
                                    Text(
                                      "The Secrets of Atlantis podcast is designed for all fantasy enthusiasts, everything from debunking underwat... see more",
                                      style: TextStyle(
                                          fontFamily: "Montserrat",
                                          color: Colors.white,
                                          fontSize: 13.0),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Row(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0)),
                                color: Color.fromRGBO(39, 29, 90, 1),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 2.5, horizontal: 10),
                                child: Row(
                                  children: [
                                    const Text(
                                      "4.8",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: "Jakarta",
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const Icon(
                                      Icons.star_border_rounded,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "(10)",
                                      style: TextStyle(
                                          color:
                                              Colors.white.withOpacity(0.5),
                                          fontFamily: "Baloo",
                                          fontSize: 14.0),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10.0),
                              child: Container(
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white),
                                width: 3,
                                height: 3,
                              ),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0)),
                                color: Color.fromRGBO(39, 29, 90, 1),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 4, horizontal: 13),
                                child: Text(
                                  "Fantasy",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                              ),
                            ),
                            const Expanded(child: SizedBox()),
                            const Icon(
                              Icons.notifications_none_rounded,
                              color: Colors.white,
                              size: 30,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 80,
              width: 400,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0)),
                color: darkVioletDown,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Stack(
                        alignment: AlignmentDirectional.centerStart,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.transparent,
                            child: Image.asset("assets/images/avatar2.png"),
                          ),
                          Positioned(
                            left: 30.0,
                            child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              child: Image.asset("assets/images/avatar3.png"),
                            ),
                          ),
                          Positioned(
                            left: 60.0,
                            child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              child: Image.asset("assets/images/avatar4.png"),
                            ),
                          ),
                          Positioned(
                            left: 90.0,
                            child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              child: Image.asset("assets/images/avatar5.png"),
                            ),
                          ),
                          const Positioned(
                            left: 120,
                            child: CircleAvatar(
                              backgroundColor: orangePlayButton,
                              child: Text(
                                "+10",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Montserrat",
                                    fontSize: 16),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: const [
                        Icon(CustomIcons.live,
                            color: orangeLiveColor, size: 16),
                        Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text(
                            "Live",
                            style: TextStyle(
                                fontSize: 20,
                                color: orangeLiveColor,
                                fontFamily: "Baloo",
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Container(
                width: 350,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(54.0)),
                  color: yellowCardBackground,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 5, right: 15, bottom: 7, top: 3),
                  child: Row(
                    children: [
                      SvgPicture.asset("assets/icons/invite.svg"),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.0),
                          child: Text(
                            "Invite your friends to join",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Montserrat",
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.share,
                        color: Color.fromRGBO(59, 56, 56, 1),
                      )
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
