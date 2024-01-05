import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app_page1/util/buttons.dart';
import 'package:wallet_app_page1/util/list_title.dart';
import 'package:wallet_app_page1/util/my_cards.dart';

class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //page controller
  final _controller = PageController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.pink,
        child: const Icon(Icons.monetization_on, size: 30),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.only(top: 9.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed:(){},
                  icon: const Icon(
                    Icons.home,
                    size: 32,
                    color: Colors.pink,
                  ),
              ),
              IconButton(
                  onPressed:(){},
                  icon: const Icon(
                    Icons.settings,
                    size: 32,
                    color: Colors.grey,
                  ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            //appbar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Text(
                        'My',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        ' Cards',
                        style: TextStyle(
                          fontSize: 28,
                        ),
                      ),
                    ],
                  ),

                  //plus button
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: const BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                      ),
                    child: const Icon(Icons.add),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            //cards
            Container(
              height: 200,
              child: PageView(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                children: [
                  MyCard(
                    balance: 5550.30,
                    cardNumber: 12345678,
                    expiryMonth: 10,
                    expiryYear: 24,
                    color: Colors.deepPurple[400],
                  ),
                  MyCard(
                    balance: 1500.50,
                    cardNumber: 12345789,
                    expiryMonth: 12,
                    expiryYear: 20,
                    color: Colors.blue[400],
                  ),
                  MyCard(
                    balance: 2060.80,
                    cardNumber: 22229999,
                    expiryMonth: 09,
                    expiryYear: 22,
                    color: Colors.redAccent[400],
                  ),
                  MyCard(
                    balance: 3333.33,
                    cardNumber: 66668888,
                    expiryMonth: 11,
                    expiryYear: 23,
                    color: Colors.green[400],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            SmoothPageIndicator(
                controller: _controller,
                count: 4,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.grey.shade700,
              ),
            ),
            const SizedBox(height: 30),
            //3 buttons -> send + pay + bill
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //send button
                  MyButton(
                    iconImagePath: 'lib/images/send_money.png',
                    buttonText: 'Send',
                  ),
                  //pay button
                  MyButton(
                    iconImagePath: 'lib/images/credit_card.png',
                    buttonText: 'Pay',
                  ),
                  //bills button
                  MyButton(
                    iconImagePath: 'lib/images/bill.png',
                    buttonText: 'Bills',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            //column -> stats + transaction
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  //statistics
                  MyListTitle(
                    iconImagePath: 'lib/images/statistics.png',
                    titleTitle: 'Statistics',
                    titleSubTitle: 'Payments and Income',
                  ),
                  SizedBox(height: 25),
                  //transaction
                  MyListTitle(
                    iconImagePath: 'lib/images/transaction.png',
                    titleTitle: 'Transactions',
                    titleSubTitle: 'Transaction history',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}