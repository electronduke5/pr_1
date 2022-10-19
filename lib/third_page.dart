import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pr_1/constants.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: homeAppBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: SizedBox(
                height: 73.0,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) =>
                        categoryWidget(index, context)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  Card(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    ),
                    child: Column(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                            color: imageYellowBackground,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 60.0, right: 60.0, bottom: 10.0),
                            child: SvgPicture.asset("assets/icons/sun.svg"),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(top: 10.0, left: 10),
                              child: Text(
                                "A Song of Moon",
                                style: TextStyle(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 20.0),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(top: 7.0, left: 10),
                              child: Text(
                                "Start with the basics",
                                style: TextStyle(fontSize: 16.0),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 1.0, left: 10.0),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.favorite_border,
                                size: 20,
                              ),
                              Expanded(
                                child: Text(
                                  "  9 Sessions",
                                  style: TextStyle(
                                    fontSize: 13.0,
                                    color: Colors.black.withOpacity(0.5),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10.0),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.pushReplacementNamed(
                                        context, '/FourthPage');
                                  },
                                  child: Wrap(
                                    children: [
                                      Text(
                                        "Start",
                                        style: TextStyle(
                                            color:
                                                Colors.black.withOpacity(0.5),
                                            fontSize: 13.0),
                                      ),
                                      const Icon(
                                        Icons.navigate_next,
                                        color: navigateNextIconColor,
                                        size: 18.0,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: cardWidget(
                              context,
                              secondPageOrangeBackground,
                              "assets/icons/bird.svg",
                              "The Sleep Hour",
                              "Asha Mukherjee",
                              " 3 Session"),
                        ),
                        Expanded(
                          child: cardWidget(
                              context,
                              imageYellowBackground,
                              "assets/icons/moon.svg",
                              "Easy on the Mission",
                              "Peter Mach",
                              " 5 minutes"),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: cardWidget(
                              context,
                              secondPageBlueBackground,
                              "assets/icons/sun.WithCloud.svg",
                              "Relax with Me",
                              "Amanda James",
                              " 3 Session"),
                        ),
                        Expanded(
                          child: cardWidget(
                              context,
                              startPageBackground,
                              "assets/icons/bird.svg",
                              "Sun and Energy",
                              "Michael Hiu",
                              " 5 minutes"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget categoryWidget(int index, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 5),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(100.0)),
          color: index == 0 ? startPageBackground : thirdPageButtonBackground,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Center(
            child: Text(
              categories[index]!,
              style: TextStyle(
                  fontSize: 13.0,
                  color: index != 0
                      ? startPageBackground
                      : thirdPageButtonBackground,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
    );
  }

  AppBar homeAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 1,
      title: const Text(
        "Meditate",
        style: TextStyle(
            fontSize: 22.0, fontWeight: FontWeight.bold, color: Colors.black),
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 10.0),
          child: Icon(
            Icons.search,
            color: Colors.black,
            size: 30,
          ),
        ),
      ],
    );
  }

  Card cardWidget(BuildContext context, Color backgroundColor, String pathImage,
      String nameSong, String authorName, String session) {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(15.0)),
              color: backgroundColor,
            ),
            child: Center(child: SvgPicture.asset(pathImage)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 10),
                child: Text(
                  nameSong,
                  style: const TextStyle(
                      fontWeight: FontWeight.w800, fontSize: 15.0),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 3.0, left: 10),
                child: Text(
                  authorName,
                  style: TextStyle(
                      fontSize: 13.0, color: Colors.black.withOpacity(0.5)),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Row(
              children: [
                const Icon(
                  Icons.favorite_border,
                  size: 12,
                ),
                Expanded(
                  child: Text(
                    session,
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: TextButton(
                    onPressed: () {},
                    child: Wrap(
                      children: [
                        Text(
                          "Start",
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                              fontSize: 12.0),
                        ),
                        const Icon(
                          Icons.navigate_next,
                          color: navigateNextIconColor,
                          size: 16.0,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
