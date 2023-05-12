import 'package:flutter/material.dart';
import 'package:millat/resources/shop/view/filters/filters.dart';
import 'package:millat/resources/shop/view/products/single_product_view.dart';
import 'package:millat/utils/globals.dart';
import 'package:millat/utils/size_utility.dart';

class ProductsView extends StatefulWidget {
  const ProductsView({Key? key}) : super(key: key);

  @override
  State<ProductsView> createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        title: Text('Popular Products',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: ImageIcon(AssetImage('assets/icons/search.png',),color: Colors.black,),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: ImageIcon(AssetImage('assets/icons/cart.png',),color: Colors.black,),
          ),

        ],

        leading: BackButton(color: Colors.black,),

      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const FiltersView(),));
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                        margin:  EdgeInsets.symmetric(horizontal: 10,),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: veryLightGreen
                        ),
                        child: const ImageIcon(AssetImage(
                          'assets/icons/filter.png'
                        ),color: green77),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      margin:  const EdgeInsets.symmetric(horizontal: 10,),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: green77
                      ),
                      child: const Text('All',style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.w700)),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      margin:  EdgeInsets.symmetric(horizontal: 10,),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: black60.withOpacity(0.5))
                      ),
                      child: const Text('Recent',style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w700)),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      margin: const  EdgeInsets.symmetric(horizontal: 10,),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: black60.withOpacity(0.5))
                      ),
                      child: const Text('Popular',style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w700)),
                    ),
                    Container(
                      padding:const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      margin: const EdgeInsets.symmetric(horizontal: 10,),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: black60.withOpacity(0.5))
                      ),
                      child: const Text('Evergreen',style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w700)),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      margin:  const EdgeInsets.symmetric(horizontal: 10,),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: black60.withOpacity(0.5))
                      ),
                      child: const Text('Darvel',style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w700)),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30,),

              SizedBox(
                height: SizeUtility(context).height,
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    mainAxisExtent: 350
                  ),
                  children: [
                    buildShopItem(image: 'assets/dummy/thope.png',title: "Men Kurta Pyjama Set"),
                    buildShopItem(image: 'assets/dummy/sijadah_3.png',title: "Hometara Velvet Prayer Mat"),
                    buildShopItem(image: 'assets/dummy/sijadah.png',title: "Hijaz Turkish Gold Border Lantern..."),
                    buildShopItem(image: 'assets/dummy/sijadah.png',title: "Hijaz Turkish Gold Border Lantern..."),
                    buildShopItem(image: 'assets/dummy/sijadah.png',title: "Hijaz Turkish Gold Border Lantern..."),
                    buildShopItem(image: 'assets/dummy/sijadah.png',title: "Hijaz Turkish Gold Border Lantern..."),
                    buildShopItem(image: 'assets/dummy/sijadah.png',title: "Hijaz Turkish Gold Border Lantern..."),
                    buildShopItem(image: 'assets/dummy/sijadah.png',title: "Hijaz Turkish Gold Border Lantern..."),
                  ],
                ),
              )
            ],
          )
        ),
      ),
    );
  }

  Widget buildShopItem({required String image, required String title}) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => SingleProductView(),));
      },
      child: Padding(
        padding:  EdgeInsets.only(right: 20.0),
        child: SizedBox(
          width: 160,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 160,
                height: 160,

                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover
                  ),
                  borderRadius: BorderRadius.circular(10),

                ),
              ),
              SizedBox(height: 15,),

              Text(title,style: TextStyle(
                  color: black83,fontSize: 18,fontWeight: FontWeight.w600,height: 1.3),maxLines: 2),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    Text('MRP',style: TextStyle(color: mainColor,fontSize: 16,fontWeight: FontWeight.w600),),
                    SizedBox(width: 10,),
                    Text('(₹.345)',style: TextStyle(color: blue126,fontSize: 16,fontWeight: FontWeight.w600,decoration: TextDecoration.lineThrough),),

                  ],),
                  Text('11%off',style: TextStyle(color: orange255,fontSize: 16,fontWeight: FontWeight.w600),),
                ],
              ),
              SizedBox(height: 15,),

              Text('Salman Fragrances',style: TextStyle(color: black131,fontSize: 14,fontWeight: FontWeight.w600),),
              SizedBox(height: 15,),
              Text('₹307.80',style: TextStyle(color: midGreenColor,fontSize: 19,fontWeight: FontWeight.w600),),

            ],
          ),
        ),
      ),
    );
  }
}
