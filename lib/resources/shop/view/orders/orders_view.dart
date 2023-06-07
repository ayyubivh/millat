import 'package:flutter/material.dart';
import 'package:millat/utils/globals.dart';
import 'package:millat/utils/size_utility.dart';

class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orders',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700)),
        centerTitle: false,
        leading: BackButton(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.transparent,
        bottom: TabBar(
          labelColor: green77,
          unselectedLabelColor: black122,
          controller: _tabController,
          dividerColor: green77,
          indicatorColor: green77,
          tabs: [
            Tab(text: 'All'),
            Tab(text: 'Unpaid'),
            Tab(text: 'To ship'),
            Tab(text: 'Shipeed'),
            Tab(text: 'Completed'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(
              child: SingleChildScrollView(
            child: Column(
              children: [
                Card(
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  elevation: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.file_copy_outlined,
                                  color: black122,
                                ),
                                Text(
                                  '162547',
                                  style: TextStyle(color: black122),
                                )
                              ],
                            ),
                            Text(
                              'Unpaid',
                              style: TextStyle(color: green77),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 85,
                              height: 85,
                              decoration: BoxDecoration(
                                  border: Border.all(color: black122),
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/dummy/thope_2.png'))),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            SizedBox(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width:
                                        SizeUtility(context).width * 40 / 100,
                                    child: Text(
                                      'Men Cotton Silk Only Kurta',
                                      style: TextStyle(
                                          color: black26,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 5),
                                    color: black122.withOpacity(0.15),
                                    child: Text('Green,XL',
                                        style: TextStyle(
                                            color: black122, fontSize: 13)),
                                  ),
                                  SizedBox(height: 15),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            '₹ 1.523,68',
                                            style: TextStyle(
                                                color: green77, fontSize: 13),
                                          ),
                                          SizedBox(width: 20),
                                          CircleAvatar(
                                            radius: 8,
                                            backgroundColor:
                                                Colors.green.shade900,
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            'Green',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            height: 30,
                                            width: 30,
                                            padding: EdgeInsets.all(5),
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 15),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: black208)),
                                            child: Icon(Icons.remove, size: 15),
                                          ),
                                          Text(
                                            '1',
                                            style: TextStyle(fontSize: 17),
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            height: 30,
                                            width: 30,
                                            padding: EdgeInsets.all(5),
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 15),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: black208)),
                                            child: Icon(Icons.add,
                                                color: green77, size: 15),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),

                            //  IconButton(onPressed: (){}, icon: Icon(Icons.delete,color:black122 ,)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  elevation: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.file_copy_outlined,
                                  color: black122,
                                ),
                                Text(
                                  '162547',
                                  style: TextStyle(color: black122),
                                )
                              ],
                            ),
                            Text(
                              'Unpaid',
                              style: TextStyle(color: green77),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 85,
                              height: 85,
                              decoration: BoxDecoration(
                                  border: Border.all(color: black122),
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/dummy/thope_2.png'))),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            SizedBox(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width:
                                        SizeUtility(context).width * 40 / 100,
                                    child: Text(
                                      'Men Cotton Silk Only Kurta',
                                      style: TextStyle(
                                          color: black26,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 5),
                                    color: black122.withOpacity(0.15),
                                    child: Text('Green,XL',
                                        style: TextStyle(
                                            color: black122, fontSize: 13)),
                                  ),
                                  SizedBox(height: 15),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            '₹ 1.523,68',
                                            style: TextStyle(
                                                color: green77, fontSize: 13),
                                          ),
                                          SizedBox(width: 20),
                                          CircleAvatar(
                                            radius: 8,
                                            backgroundColor:
                                                Colors.green.shade900,
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            'Green',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            height: 30,
                                            width: 30,
                                            padding: EdgeInsets.all(5),
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 15),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: black208)),
                                            child: Icon(Icons.remove, size: 15),
                                          ),
                                          Text(
                                            '1',
                                            style: TextStyle(fontSize: 17),
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            height: 30,
                                            width: 30,
                                            padding: EdgeInsets.all(5),
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 15),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: black208)),
                                            child: Icon(Icons.add,
                                                color: green77, size: 15),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),

                            //  IconButton(onPressed: (){}, icon: Icon(Icons.delete,color:black122 ,)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  elevation: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.file_copy_outlined,
                                  color: black122,
                                ),
                                Text(
                                  '162547',
                                  style: TextStyle(color: black122),
                                )
                              ],
                            ),
                            Text(
                              'Unpaid',
                              style: TextStyle(color: green77),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 85,
                              height: 85,
                              decoration: BoxDecoration(
                                  border: Border.all(color: black122),
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/dummy/thope_2.png'))),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            SizedBox(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width:
                                        SizeUtility(context).width * 40 / 100,
                                    child: Text(
                                      'Men Cotton Silk Only Kurta',
                                      style: TextStyle(
                                          color: black26,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 5),
                                    color: black122.withOpacity(0.15),
                                    child: Text('Green,XL',
                                        style: TextStyle(
                                            color: black122, fontSize: 13)),
                                  ),
                                  SizedBox(height: 15),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            '₹ 1.523,68',
                                            style: TextStyle(
                                                color: green77, fontSize: 13),
                                          ),
                                          SizedBox(width: 20),
                                          CircleAvatar(
                                            radius: 8,
                                            backgroundColor:
                                                Colors.green.shade900,
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            'Green',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            height: 30,
                                            width: 30,
                                            padding: EdgeInsets.all(5),
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 15),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: black208)),
                                            child: Icon(Icons.remove, size: 15),
                                          ),
                                          Text(
                                            '1',
                                            style: TextStyle(fontSize: 17),
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            height: 30,
                                            width: 30,
                                            padding: EdgeInsets.all(5),
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 15),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: black208)),
                                            child: Icon(Icons.add,
                                                color: green77, size: 15),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),

                            //  IconButton(onPressed: (){}, icon: Icon(Icons.delete,color:black122 ,)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  elevation: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.file_copy_outlined,
                                  color: black122,
                                ),
                                Text(
                                  '162547',
                                  style: TextStyle(color: black122),
                                )
                              ],
                            ),
                            Text(
                              'Unpaid',
                              style: TextStyle(color: green77),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 85,
                              height: 85,
                              decoration: BoxDecoration(
                                  border: Border.all(color: black122),
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/dummy/thope_2.png'))),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            SizedBox(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width:
                                        SizeUtility(context).width * 40 / 100,
                                    child: Text(
                                      'Men Cotton Silk Only Kurta',
                                      style: TextStyle(
                                          color: black26,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 5),
                                    color: black122.withOpacity(0.15),
                                    child: Text('Green,XL',
                                        style: TextStyle(
                                            color: black122, fontSize: 13)),
                                  ),
                                  SizedBox(height: 15),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            '₹ 1.523,68',
                                            style: TextStyle(
                                                color: green77, fontSize: 13),
                                          ),
                                          SizedBox(width: 20),
                                          CircleAvatar(
                                            radius: 8,
                                            backgroundColor:
                                                Colors.green.shade900,
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            'Green',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            height: 30,
                                            width: 30,
                                            padding: EdgeInsets.all(5),
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 15),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: black208)),
                                            child: Icon(Icons.remove, size: 15),
                                          ),
                                          Text(
                                            '1',
                                            style: TextStyle(fontSize: 17),
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            height: 30,
                                            width: 30,
                                            padding: EdgeInsets.all(5),
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 15),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: black208)),
                                            child: Icon(Icons.add,
                                                color: green77, size: 15),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),

                            //  IconButton(onPressed: (){}, icon: Icon(Icons.delete,color:black122 ,)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  elevation: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.file_copy_outlined,
                                  color: black122,
                                ),
                                Text(
                                  '162547',
                                  style: TextStyle(color: black122),
                                )
                              ],
                            ),
                            Text(
                              'Unpaid',
                              style: TextStyle(color: green77),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 85,
                              height: 85,
                              decoration: BoxDecoration(
                                  border: Border.all(color: black122),
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/dummy/thope_2.png'))),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            SizedBox(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width:
                                        SizeUtility(context).width * 40 / 100,
                                    child: Text(
                                      'Men Cotton Silk Only Kurta',
                                      style: TextStyle(
                                          color: black26,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 5),
                                    color: black122.withOpacity(0.15),
                                    child: Text('Green,XL',
                                        style: TextStyle(
                                            color: black122, fontSize: 13)),
                                  ),
                                  SizedBox(height: 15),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            '₹ 1.523,68',
                                            style: TextStyle(
                                                color: green77, fontSize: 13),
                                          ),
                                          SizedBox(width: 20),
                                          CircleAvatar(
                                            radius: 8,
                                            backgroundColor:
                                                Colors.green.shade900,
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            'Green',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            height: 30,
                                            width: 30,
                                            padding: EdgeInsets.all(5),
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 15),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: black208)),
                                            child: Icon(Icons.remove, size: 15),
                                          ),
                                          Text(
                                            '1',
                                            style: TextStyle(fontSize: 17),
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            height: 30,
                                            width: 30,
                                            padding: EdgeInsets.all(5),
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 15),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: black208)),
                                            child: Icon(Icons.add,
                                                color: green77, size: 15),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),

                            //  IconButton(onPressed: (){}, icon: Icon(Icons.delete,color:black122 ,)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
