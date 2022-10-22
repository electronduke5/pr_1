import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pr_1/custom_icons.dart';

import 'constants.dart';

class FifthPage extends StatelessWidget {
  const FifthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteSmokeBackground,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20, top:10, bottom: 20),
                      child: Column(
                        children: [
                          Row(
                            //TODO: Первая строка с именем пользователя и кнопками поиска и уведомленйи

                            children: [
                              CircleAvatar(
                                child: Image.asset(
                                  "assets/images/avatar6_main.png",
                                  width: 45,
                                  height: 45,
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text("Good Evening!",
                                          style:
                                              FifthPageColor.secondaryTextStyle),
                                      Text(
                                        "Dan Smith",
                                        style: TextStyle(
                                            fontFamily: "WorkSans",
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color:
                                                FifthPageColor.primaryTextColor),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Ink(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: FifthPageColor.borderColor,
                                    width: 1,
                                  ),
                                ),
                                child: IconButton(
                                  onPressed: () {
                                    Navigator.of(context).pushNamed('/MenuPage');
                                  },
                                  icon: const Icon(
                                    CustomIcons.search,
                                    size: 20,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Stack(
                                  children: [
                                    Ink(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: FifthPageColor.borderColor,
                                          width: 1,
                                        ),
                                      ),
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          CustomIcons.bell,
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      right: 16,
                                      bottom: 13,
                                      top: 1,
                                      child: Container(
                                        width: 7,
                                        height: 7,
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: FifthPageColor
                                                .avatarBackgroundColor),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 25.0),
                            child: IntrinsicHeight(
                              child: Row(
                                //TODO: Вторая строка с My Weekly Tasks
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          "My Weekly Tasks",
                                          style: FifthPageColor.mainTextStyle,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 7.0),
                                          child: Text(
                                            "18 Tasks Pending",
                                            style:
                                                FifthPageColor.secondaryTextStyle,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  IconButton(
                                      splashRadius: 20,
                                      iconSize: 20,
                                      onPressed: () {},
                                      icon: const Icon(CustomIcons.settings)),
                                  const VerticalDivider(
                                    indent: 7,
                                    endIndent: 7,
                                    thickness: 1,
                                    color: FifthPageColor.dividerColor,
                                  ),
                                  IconButton(
                                      splashRadius: 20,
                                      iconSize: 17,
                                      onPressed: () {},
                                      icon: const Icon(CustomIcons.plus)),
                                ],
                              ),
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            physics: const BouncingScrollPhysics(
                                parent: AlwaysScrollableScrollPhysics()),
                            child: Row(
                              //TODO: Третья строка с карточками заданий (Возможно нужно использвоать Expanded)
                              children: [
                                weeklyTaskCard(
                                    "UI/UX Design",
                                    "High",
                                    "Create a Landing Page",
                                    "Mon, 12 July 2022",
                                    "assets/images/avatar7.png",
                                    "assets/images/avatar8.png",
                                    "3+"),
                                weeklyTaskCard(
                                    "Development",
                                    "Low",
                                    "Develop a Website",
                                    "Mon, 30 July 2022",
                                    "assets/images/avatar3.1.png",
                                    "assets/images/avatar9.png",
                                    "2+"),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 25.0),
                            child: IntrinsicHeight(
                              child: Row(
                                //TODO: Четвертая строка с Todays Tasks
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          "Today's Tasks",
                                          style: FifthPageColor.mainTextStyle,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 7.0),
                                          child: Text(
                                            "18 Tasks Pending",
                                            style:
                                                FifthPageColor.secondaryTextStyle,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  IconButton(
                                      splashRadius: 20,
                                      iconSize: 20,
                                      onPressed: () {},
                                      icon: const Icon(CustomIcons.settings)),
                                  const VerticalDivider(
                                    indent: 7,
                                    endIndent: 7,
                                    thickness: 1,
                                    color: FifthPageColor.dividerColor,
                                  ),
                                  IconButton(
                                      splashRadius: 20,
                                      iconSize: 17,
                                      onPressed: () {},
                                      icon: const Icon(CustomIcons.plus)),
                                ],
                              ),
                            ),
                          ),
                          Column(
                            //TODO: Строка с карточками заданий (Expanded). Она жолжна быть до самого низа и прокручиваться,
                            children: [
                              todayTaskWidget(
                                  "Design 2 App Screens",
                                  "Crypto Wallet App",
                                  true,
                                  "Mon, 10 July 2022"),
                              todayTaskWidget(
                                  "Design Homepage",
                                  "Water Company Website",
                                  false,
                                  "Mon, 15 July 2022"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            customBottomNav(),
          ],
        ),
      ),
    );
  }

  Container customBottomNav() {
    return Container(
      //TODO: Здесь будет BottomNavigationBar
      decoration:  BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 25.0,
            offset: const Offset(0, -10)
          )
        ]
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(right: 15.0, left: 15.0, top: 10, bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset("assets/icons/home.svg", color: FifthPageColor.activeTextColor, ),
                  color: FifthPageColor.activeTextColor,
                  iconSize: 12,
                    ),
                const Text(
                  "Home",
                  style: TextStyle(
                    color: FifthPageColor.activeTextColor,
                    fontSize: 12.0,
                    fontFamily: "WorkSans",
                  ),
                ),
              ],
            ),
            Column(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      CustomIcons.projects,
                    )),
                const Text("Projects",
                    style: FifthPageColor.bottomNavTextStyle),
              ],
            ),
            Column(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      CustomIcons.calendar,
                    )),
                const Text("Calendar",
                    style: FifthPageColor.bottomNavTextStyle),
              ],
            ),
            Column(
              children: [
                Stack(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          CustomIcons.messages,
                        )),
                    Positioned(
                      right: 10,
                      bottom: 19,
                      top: 1,
                      child: Container(
                        width: 10,
                        height: 10,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: FifthPageColor.avatarBackgroundColor),
                      ),
                    ),
                  ],
                ),
                const Text("Messages",
                    style: FifthPageColor.bottomNavTextStyle),
              ],
            ),
            Column(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      CustomIcons.members,
                    )),
                const Text("Members", style: FifthPageColor.bottomNavTextStyle),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Padding todayTaskWidget(
      String title, String nameApp, bool isCompleted, String date) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Container(
        width: 400,
        height: 150,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //TODO: Столбец, где будут карточки с заданиями
            children: [
              Row(
                //TODO: Строка с верхней частью задания
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //TODO: Столбец с названием и описанием задачи
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                              color: FifthPageColor.primaryTextColor,
                              fontSize: 18.0,
                              fontFamily: "WorkSans",
                              fontWeight: FontWeight.w600,
                              decoration: isCompleted
                                  ? TextDecoration.lineThrough
                                  : TextDecoration.none),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            nameApp,
                            style: FifthPageColor.secondaryTextStyle,
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (isCompleted)
                    Container(
                      width: 30,
                      height: 30,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: FifthPageColor.activeTextColor),
                      child: const Icon(Icons.check, color: Colors.white),
                    )
                ],
              ),
              const Divider(
                color: FifthPageColor.dividerColor,
                thickness: 1,
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 10.0),
                    child: Icon(CustomIcons.calendar),
                  ),
                  Text(
                    date,
                    style: FifthPageColor.secondaryTextStyle,
                  ),
                  const Expanded(child: SizedBox()),
                  Expanded(
                    child: Stack(
                      alignment: AlignmentDirectional.centerStart,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: Image.asset("assets/images/avatar10.png"),
                        ),
                        Positioned(
                          left: 22.0,
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            radius: 20,
                            child: Image.asset("assets/images/avatar11.png"),
                          ),
                        ),
                        const Positioned(
                          left: 45,
                          child: CircleAvatar(
                            radius: 18,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 15,
                              backgroundColor:
                                  FifthPageColor.avatarBackgroundColor,
                              child: Text(
                                "1+",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "WorkSans",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 11),
                              ),
                            ),
                          ),
                        ),
                      ],
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

  Padding weeklyTaskCard(
    String department,
    String level,
    String title,
    String date,
    String firstAvatarPath,
    String secondAvatarPath,
    String avatarText,
  ) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Container(
        width: 210,
        height: 230,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            //TODO: Столюец со строками карточки
            children: [
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //TODO: Строка с метками
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30.0)),
                        color: department == "Development"
                            ? FifthPageColor.backgroundColorDevelopment
                            : FifthPageColor.backgroundColorDesign,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 7, horizontal: 10),
                        child: Text(
                          department,
                          style: TextStyle(
                              color: department == "Development"
                                  ? FifthPageColor.textColorDevelopment
                                  : FifthPageColor.textColorDesign,
                              fontFamily: "WorkSans",
                              fontWeight: FontWeight.normal,
                              fontSize: 13),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30.0)),
                        color: level == "High"
                            ? FifthPageColor.backgroundColorHigh
                            : FifthPageColor.backgroundColorLow,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 7, horizontal: 13),
                        child: Text(
                          level,
                          style: TextStyle(
                              color: level == "High"
                                  ? FifthPageColor.textColorHigh
                                  : FifthPageColor.textColorLow,
                              fontFamily: "WorkSans",
                              fontWeight: FontWeight.normal,
                              fontSize: 13),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //TODO: Строка с названием
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Text(
                          title,
                          style: FifthPageColor.mainTextStyle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: Row(
                  //TODO: Строка с аватарами
                  children: [
                    Expanded(
                      child: Stack(
                        alignment: AlignmentDirectional.centerStart,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.transparent,
                            child: Image.asset(firstAvatarPath),
                          ),
                          Positioned(
                            left: 30.0,
                            child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              radius: 20,
                              child: Image.asset(secondAvatarPath),
                            ),
                          ),
                          Positioned(
                            left: 55,
                            child: CircleAvatar(
                              radius: 23,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                backgroundColor:
                                    FifthPageColor.avatarBackgroundColor,
                                child: Text(
                                  avatarText,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontFamily: "WorkSans",
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                //TODO: Строка с датой
                children: [
                  const Icon(CustomIcons.calendar),
                  Text(
                    date,
                    style: FifthPageColor.secondaryTextStyle,
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
