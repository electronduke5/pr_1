import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pr_1/constants.dart';
import 'package:pr_1/helperClasses/Food.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        left: false,
        right: false,
        minimum: const EdgeInsets.only(top: 10),
        child: Stack(
          children: [
            Image.asset('assets/images/menuBack.png'),
            _buildGradient(),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  //Строка с названием и кнопкой назад
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0, bottom: 14),
                    child: Row(
                      children: [
                        _backButton(),
                        Text(
                          'Popular Menu',
                          style: GoogleFonts.sourceSansPro(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  //Строка с посиком и сортировкой
                  Row(
                    children: [
                      _searchField(),
                      _sortButton(context),
                    ],
                  ),
                  //Строка со всеми едами
                  Expanded(
                    child: ListView.builder(
                      clipBehavior: Clip.antiAlias,
                      //clipBehavior: Clip.none,
                      physics: const BouncingScrollPhysics(),
                      itemCount: Food.foods.length,
                      itemBuilder: (BuildContext context, int index) {
                        return _foodWidget(index);
                      },
                    ),
                  ),
                  //Стркоа с ботом нав баром
                  _bottomNavBar(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _bottomNavBar() {
    return Container(
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(
            color: MenuPageColors.shadowColor,
            blurRadius: 20,
            offset: Offset(12, 26)),
      ]),
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: MenuPageColors.onPrimaryPinkColor,
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.home,
                        color: MenuPageColors.primaryPinkColor),
                    Text(
                      'Home',
                      style: GoogleFonts.sourceSansPro(
                          color: MenuPageColors.primaryPinkColor, fontSize: 18),
                    ),
                  ],
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.shopping_basket,
                    color: MenuPageColors.primaryPinkColor,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.message,
                    color: MenuPageColors.primaryPinkColor,
                  )),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.person,
                  color: MenuPageColors.primaryPinkColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding _backButton() {
    return Padding(
      padding: const EdgeInsets.only(right: 25.0),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size.zero,
            padding: const EdgeInsets.all(10),
            backgroundColor: MenuPageColors.onPrimaryPinkColor,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () {},
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: MenuPageColors.primaryPinkColor,
          )),
    );
  }

  Expanded _searchField() {
    return Expanded(
      child: Material(
        color: Colors.transparent,
        elevation: 20,
        shadowColor: MenuPageColors.shadowColor,
        child: SizedBox(
            width: 200,
            height: 50,
            child: TextField(
              style: GoogleFonts.sourceSansPro(
                  fontSize: 15, color: MenuPageColors.textColor),
              enabled: false,
              readOnly: true,
              obscureText: true,
              decoration: InputDecoration(
                labelStyle: GoogleFonts.sourceSansPro(
                    fontSize: 15, color: MenuPageColors.textColor),
                filled: true,
                fillColor: MenuPageColors.searchBackgroundColor,
                border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(100))),
                contentPadding: const EdgeInsets.only(left: 30),
                labelText: 'Search',
                suffixIcon: const Icon(
                  Icons.search,
                  color: MenuPageColors.textColor,
                ),
              ),
            )),
      ),
    );
  }

  Padding _sortButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size.zero,
            padding: const EdgeInsets.all(10),
            backgroundColor: MenuPageColors.onPrimaryPinkColor,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () {
            Navigator.of(context).pushNamed('/DesignPage');
          },
          child: const Icon(
            Icons.sort,
            color: MenuPageColors.primaryPinkColor,
          )),
    );
  }

  Padding _foodWidget(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        decoration: const BoxDecoration(boxShadow: [
          BoxShadow(
              color: MenuPageColors.shadowColor,
              blurRadius: 20,
              offset: Offset(12, 26)),
        ]),
        child: Card(
          elevation: 0,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Image.asset(Food.foods[index].image),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Food.foods[index].name,
                          style: GoogleFonts.sourceSansPro(
                            color: MenuPageColors.textColor,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 6.0),
                          child: Text(
                            Food.foods[index].category,
                            style: GoogleFonts.sourceSansPro(
                              color: MenuPageColors.secondaryTextColor,
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                    "\$${Food.foods[index].price}",
                    style: GoogleFonts.sourceSansPro(
                      fontSize: 29,
                      fontWeight: FontWeight.bold,
                      color: MenuPageColors.primaryPinkColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container _buildGradient() {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: const [
          0.0,
          0.2,
        ],
        colors: [
          Colors.white.withOpacity(0.1),
          Colors.white.withOpacity(0.418),
        ],
      )),
    );
  }
}
