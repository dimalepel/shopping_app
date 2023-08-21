import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> tabs = [
    'All',
    'Category',
    'Top',
    'Recommended',
  ];

  List<String> imageList = [
    'assets/images/image1.jpg',
    'assets/images/image2.jpg',
    'assets/images/image3.jpg',
    'assets/images/image4.jpg',
  ];

  List<String> productTitles = [
    'Warm Zipper',
    'Knotted Woo!',
    'Zipper Win',
    'Child Win'
  ];

  List<int> prices = [
    100,
    200,
    350,
    400
  ];

  List<int> reviews = [
    54,
    120,
    542,
    5
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
                left: 15,
                right: 15,
                top: 20
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(5),
                      height: 50,
                      width: MediaQuery.of(context).size.width / 1.5,
                      decoration: BoxDecoration(
                        color: Colors.black12.withOpacity(0.05),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        style: const TextStyle(
                            fontSize: 20
                        ),
                        decoration: const InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            prefixIcon: Icon(
                              Icons.search,
                              size: 25,
                              color: Color.fromARGB(255, 250, 85, 35),
                            ),
                            border: InputBorder.none,
                            label: Text(
                              'Find your product',
                            )
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 6,
                      decoration: BoxDecoration(
                        color: Colors.black12.withOpacity(0.05),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.notifications,
                          size: 25,
                          color: Color.fromARGB(255, 250, 85, 35),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: const Color(0xfffff0dd),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset('assets/images/freed.png'),
                ),
                const SizedBox(height: 20,),
                SizedBox(
                  height: 50,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: tabs.length,
                      itemBuilder: (context, index) {
                        return FittedBox(
                          child: Container(
                            height: 40,
                            margin: const EdgeInsets.all(8),
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            decoration: BoxDecoration(
                              color: Colors.black12.withOpacity(0.05),
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Center(
                              child: FittedBox(
                                child: Text(
                                  tabs[index],
                                  style: const TextStyle(
                                    color: Colors.black38,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      }
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  height: 280,
                  child: ListView.builder(
                    itemCount: imageList.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(right: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 200,
                              child: Stack(
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(imageList[index]),
                                    ),
                                  ),
                                  Positioned(
                                    right: 10,
                                    top: 10,
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(4)
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.favorite,
                                          color: Color.fromARGB(255, 250, 85, 35)
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              productTitles[index],
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Icon(Icons.star, color: Colors.amber,size: 22,),
                                Text('(${reviews[index].toString()})'),
                                SizedBox(width: 10,),
                                Text(
                                  '\$${prices[index].toString()}',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 250, 85, 35)
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    }
                  )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
