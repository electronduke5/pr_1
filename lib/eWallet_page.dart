import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pr_1/custom_icons.dart';
import 'package:pr_1/helperClasses/Transaction.dart';

class EWalletPage extends StatelessWidget {
  const EWalletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        showUnselectedLabels: true,
        currentIndex: 3,
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: GoogleFonts.urbanist(
          color: Colors.grey
        ),
        selectedItemColor: Colors.black,
        selectedLabelStyle: GoogleFonts.urbanist(
          fontWeight: FontWeight.bold
        ),
        items:const  [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.account_balance_wallet),
            icon: Icon(Icons.account_balance_wallet_outlined),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_outlined),
            label: 'Profile',
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 15.0, right: 15, bottom: 15, top: 25),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.sort, size: 30),
                    onPressed: () {},
                  ),
                  Text(
                    'My E-Wallet',
                    style: GoogleFonts.urbanist(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {}, icon: const Icon(CustomIcons.search)),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: const CircleBorder(),
                      side: const BorderSide(color: Colors.black, width: 2),
                    ),
                    onPressed: () {},
                    child: const Icon(
                      Icons.more_horiz,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: _creditCard(),
              ),
              Row(
                children: [
                  Text(
                    'Transaction History',
                    style: GoogleFonts.urbanist(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const Spacer(),
                  Text(
                    'See all',
                    style: GoogleFonts.urbanist(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  )
                ],
              ),
              Expanded(
                child: ListView.builder(
                  clipBehavior: Clip.antiAlias,
                  //clipBehavior: Clip.none,
                  physics: const BouncingScrollPhysics(),
                  itemCount: Transaction.transactions.length,
                  itemBuilder: (BuildContext context, int index) {
                    return _transactionWidget(index);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _transactionWidget(int index) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: const Color.fromRGBO(230, 230, 230, 1),
            radius: 27,
            backgroundImage: Transaction.transactions[index].type == 'Orders'
                ? AssetImage(Transaction.transactions[index].image.toString())
                : null,
            child: Transaction.transactions[index].type == 'Orders'
                ? null
                : const CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.black87,
                    child: Icon(
                      Icons.account_balance_wallet,
                      color: Colors.white,
                    )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Transaction.transactions[index].name,
                  style: GoogleFonts.urbanist(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 6.0),
                  child: IntrinsicHeight(
                    child: Row(
                      children: [
                        Text(
                          Transaction.transactions[index].date,
                          style: GoogleFonts.urbanist(
                              fontSize: 12,
                              color: Colors.black26,
                              fontWeight: FontWeight.w600),
                        ),
                        const VerticalDivider(
                          color: Colors.black26,
                          thickness: 1,
                        ),
                        Text(
                          Transaction.transactions[index].time,
                          style: GoogleFonts.urbanist(
                              fontSize: 12,
                              color: Colors.black26,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '\$${Transaction.transactions[index].price}',
                style: GoogleFonts.urbanist(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Row(
                children: [
                  Text(
                    Transaction.transactions[index].type,
                    style: GoogleFonts.urbanist(
                        fontSize: 14,
                        color: Colors.black26,
                        fontWeight: FontWeight.w600),
                  ),
                  Card(
                    color: Transaction.transactions[index].type == 'Orders'
                        ? Colors.redAccent
                        : Colors.blue,
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Icon(
                        Transaction.transactions[index].type == 'Orders'
                            ? Icons.arrow_upward
                            : Icons.arrow_downward,
                        color: Colors.white,
                        size: 10,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Card _creditCard() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      color: Colors.black87,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Строка с именем и логотипами
            Row(
              children: [
                Text(
                  'Andrew Ainsley',
                  style: GoogleFonts.urbanist(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const Spacer(),
                SizedBox(
                  width: 50,
                  height: 30,
                  child: SvgPicture.asset(
                    'assets/icons/visa.svg',
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 50,
                  height: 30,
                  child: SvgPicture.asset('assets/icons/mastercard.svg'),
                ),
              ],
            ),
            Text(
              '•••• •••• •••• 3629',
              style: GoogleFonts.urbanist(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 25.0, bottom: 10),
              child: Text(
                'Your balance',
                style: GoogleFonts.urbanist(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ),
            Row(
              children: [
                Text(
                  '\$9,379',
                  style: GoogleFonts.urbanist(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                  ),
                ),
                const Spacer(),
                ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ),
                    ),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.file_download_outlined,
                      color: Colors.black87,
                    ),
                    label: Text(
                      'Top Up',
                      style: GoogleFonts.urbanist(
                        color: Colors.black87,
                        fontWeight: FontWeight.w600,
                      ),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
