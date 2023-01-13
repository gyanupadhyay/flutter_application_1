import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/bankcard_widget.dart';
import 'package:flutter_application_1/widgets/list_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  //page controller

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0f1111),
      body: SafeArea(
        child: Column(
          children: [
            
            //App Bar
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      //profile container photo
                      Container(
                        height: 45,
                        width: 45,
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage('assets/man.png'),
                          ),
                          color: Colors.brown,
                          borderRadius: BorderRadius.circular(13),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      //text
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Welcome back,',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                                fontWeight: FontWeight.normal),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            'Tanya Myroniuk',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  //message icon
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.message_rounded,
                      color: Colors.brown,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 25.0,
            ),

            //carousel
            SizedBox(
              height: 230,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: const [
                  CardWidget(
                    cardBalance: 4860,
                    cardNumber: '5325 4141 2355 5782',
                    gradientColor1: Color(0xFF427a6c),
                    gradientColor2: Color(0xFF3f8080),
                  ),
                  CardWidget(
                    cardBalance: 42291,
                    cardNumber: '5325 4141 2355 0374',
                    gradientColor1: Color(0xFF714e3e),
                    gradientColor2: Color(0xFFaf5e47),
                  ),
                  CardWidget(
                    cardBalance: 47689,
                    cardNumber: '5325 4141 2355 1147',
                    gradientColor1: Colors.redAccent,
                    gradientColor2: Colors.white10,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),

            // dots indicator
            SmoothPageIndicator(
              controller: _controller, 
              count: 3,
              effect: const WormEffect(
                activeDotColor: Color(0xFF3f8080),
                 dotHeight: 8,
                 dotWidth: 8,
                ),
              ),

              const SizedBox(height: 24,),

              //container with list tile
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF171717),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35),
                      ),
                    ),
                    
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Row(
                
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                      const Text(
                        'Transactions',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Row(
                        children: [
                           IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Colors.white54,
                        size: 22,
                      ),
                    ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                          height: 40,
                          width: 40,
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.black87,
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: const Icon(
                            Icons.filter_list_alt,
                            color: Colors.white54,
                            size: 20,
                            ),
                        ),           
                      ],
                  )
                              ],
                             ),
                             const SizedBox(height: 30,),
                              const ListCard(
                  price: 145,
                  title: 'Restaurant Submarine',
                  icon: Icons.restaurant,
                              ),
                              const SizedBox(height: 20,),
                              const ListCard(
                    price: 270,
                  title: 'Opera tickets',
                  icon: Icons.airplane_ticket,
                              ),
                               const SizedBox(height: 30,),
                              const ListCard( 
                   price: 400,
                  title: 'Cafe Cashback',
                  icon: Icons.local_cafe,),
                              const SizedBox(height: 25,),
                              const ListCard(
                    price: 100,
                  title: 'Breakfast Restaurant',
                  icon: Icons.breakfast_dining,
                              ),
                              const SizedBox(height: 30,),
                              const ListCard(
                  price: 145,
                  title: 'Restaurant Submarine',
                  icon: Icons.restaurant,
                              ),
                             
                            ],),
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
