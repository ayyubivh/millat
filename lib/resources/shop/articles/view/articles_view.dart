import 'package:flutter/material.dart';
import 'package:millat/resources/shop/articles/view/single_article_view.dart';
import 'package:millat/utils/globals.dart';

class ArticlesView extends StatefulWidget {
  const ArticlesView({Key? key}) : super(key: key);

  @override
  State<ArticlesView> createState() => _ArticlesViewState();
}

class _ArticlesViewState extends State<ArticlesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        title: Text('All Aricles',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700)),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      margin:  EdgeInsets.symmetric(horizontal: 10,),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: green77
                      ),
                      child: Text('All',style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.w700)),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      margin:  EdgeInsets.symmetric(horizontal: 10,),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: black60.withOpacity(0.5))
                      ),
                      child: Text('Recent',style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w700)),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      margin:  EdgeInsets.symmetric(horizontal: 10,),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: black60.withOpacity(0.5))
                      ),
                      child: Text('Popular',style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w700)),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      margin:  EdgeInsets.symmetric(horizontal: 10,),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: black60.withOpacity(0.5))
                      ),
                      child: Text('Evergreen',style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w700)),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      margin:  EdgeInsets.symmetric(horizontal: 10,),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: black60.withOpacity(0.5))
                      ),
                      child: Text('Darvel',style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w700)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              Text('All',style: TextStyle(color: black26,fontSize: 18,fontWeight: FontWeight.bold),),


              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => SingleArticleView(),));
                },
                child: ClipRRect(
                  child: Image.asset('assets/dummy/article.png',height: 300),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  Text('Bilal • 20 Jan 2022',style: TextStyle(color: mainColor,fontSize: 16,fontWeight: FontWeight.w600),),

                  SizedBox(height: 20,),
                  Text('Bilal Cotton Galabiyya',style: TextStyle(color: black16,fontSize: 15,fontWeight: FontWeight.w600),),

                  SizedBox(height: 20,),
                  Text('How do you create compelling clothes that wow your friends and impress your managers?',style: TextStyle(color: black102,fontSize: 15,),),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: veryLightGreen
                    ),
                    child: Text('Popular',style: TextStyle(color: green77,fontWeight: FontWeight.w700)),
                  )
                ],
              ),


              ClipRRect(
                child: Image.asset('assets/dummy/article.png',height: 300),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  Text('Bilal • 20 Jan 2022',style: TextStyle(color: mainColor,fontSize: 16,fontWeight: FontWeight.w600),),

                  SizedBox(height: 20,),
                  Text('Bilal Cotton Galabiyya',style: TextStyle(color: black16,fontSize: 15,fontWeight: FontWeight.w600),),

                  SizedBox(height: 20,),
                  Text('How do you create compelling clothes that wow your friends and impress your managers?',style: TextStyle(color: black102,fontSize: 15,),),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: veryLightGreen
                    ),
                    child: Text('Popular',style: TextStyle(color: green77,fontWeight: FontWeight.w700)),
                  )
                ],
              ),

              ClipRRect(
                child: Image.asset('assets/dummy/quran_sibha.png',height: 300),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  Text('Bilal • 20 Jan 2022',style: TextStyle(color: mainColor,fontSize: 16,fontWeight: FontWeight.w600),),

                  SizedBox(height: 20,),
                  Text('Bilal Cotton Galabiyya',style: TextStyle(color: black16,fontSize: 15,fontWeight: FontWeight.w600),),

                  SizedBox(height: 20,),
                  Text('How do you create compelling clothes that wow your friends and impress your managers?',style: TextStyle(color: black102,fontSize: 15,),),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: veryLightGreen
                    ),
                    child: Text('Popular',style: TextStyle(color: green77,fontWeight: FontWeight.w700)),
                  )
                ],
              ),

              ClipRRect(
                child: Image.asset('assets/dummy/article.png',height: 300),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  Text('Bilal • 20 Jan 2022',style: TextStyle(color: mainColor,fontSize: 16,fontWeight: FontWeight.w600),),

                  SizedBox(height: 20,),
                  Text('Bilal Cotton Galabiyya',style: TextStyle(color: black16,fontSize: 15,fontWeight: FontWeight.w600),),

                  SizedBox(height: 20,),
                  Text('How do you create compelling clothes that wow your friends and impress your managers?',style: TextStyle(color: black102,fontSize: 15,),),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: veryLightGreen
                    ),
                    child: Text('Popular',style: TextStyle(color: green77,fontWeight: FontWeight.w700)),
                  )
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
