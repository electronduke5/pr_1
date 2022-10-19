import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pr_1/constants.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteSmokeBackground,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 34.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 90.0, bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                          color: imageYellowBackground,
                        ),
                        child: SvgPicture.asset("assets/icons/peterMatch.svg")),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children:  [
                  Text(
                    "Peter Mach",
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 6.0),
                    child: Text(
                      "Mind Deep Relax",
                      style:
                          TextStyle(fontSize: 20.0, fontWeight: FontWeight.w900),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Text(
                        "Join the Community as we prepare over 33 days to relax and feel joy with the mind and happnies session across the World.",
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 30),
                child: ElevatedButton(
                  style: nextSessionButtonStyle,
                  onPressed: () {
                    Navigator.pushNamed(
                        context, '/ThirdPage');
                  },
                  child: Wrap(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0, right: 10),
                        child: SvgPicture.asset("assets/icons/shapePlayIcon.svg"),
                      ),
                      const Text(
                        "Play Next Session",
                        style: TextStyle(
                          fontSize: 17.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              songWidget(context, secondPageBlueBackground, "Sweet Memories", "December 29 Pre-Launch"),
              songWidget(context, startPageBackground, "A Day Dream", "December 29 Pre-Launch"),
              songWidget(context, secondPageOrangeBackground, "Mind Explore", "December 29 Pre-Launch"),
            ],
          ),
        ),
      ),
    );
  }
  Column songWidget(
      BuildContext context,
      Color colorBackground,
      String nameSong,
      String descriptionSong
      ){
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 42,
              height: 42,
              decoration:  BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                color: colorBackground,
              ),
              child: Padding(
                padding:
                const EdgeInsets.only(top: 13.0, left: 4, bottom: 13),
                child: SvgPicture.asset("assets/icons/shapePlayIcon.svg"),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  [
                    Text(
                      nameSong,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 17.0),
                    ),
                    Text(
                      descriptionSong,
                      style:  TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: Icon(
                Icons.more_horiz,
                color: Colors.grey,
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: Divider(
            height: 0.1,
            color: Colors.black.withOpacity(0.5),
          ),
        ),
      ],
    );
  }
}
