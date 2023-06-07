import 'package:flutter/material.dart';
import 'package:millat/utils/globals.dart';

class SingleArticleView extends StatefulWidget {
  const SingleArticleView({Key? key}) : super(key: key);

  @override
  State<SingleArticleView> createState() => _SingleArticleViewState();
}

class _SingleArticleViewState extends State<SingleArticleView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        title: Text('Single Aricles',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: ImageIcon(
              AssetImage(
                'assets/icons/search.png',
              ),
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: ImageIcon(
              AssetImage(
                'assets/icons/cart.png',
              ),
              color: Colors.black,
            ),
          ),
        ],
        leading: BackButton(
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                child: Image.asset('assets/dummy/article.png', height: 300),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Bilal • 20 Jan 2022',
                    style: TextStyle(
                        color: green77,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: veryLightGreen),
                    child: Text('Popular',
                        style: TextStyle(
                            color: green77, fontWeight: FontWeight.w700)),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Bilal Cotton Galabiyya',
                style: TextStyle(
                    color: black16, fontSize: 20, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'How do you create compelling clothes that wow your friends and impress your managers?Lorem ipsum dolor sit amet, consectetur adipiscing elit. At imperdiet et pellentesque euismod. Nunc sed risus sed cursus nunc vel posuere. Et suspendisse at et, scelerisque risus, amet tincidunt pretium condimentum. Ultricies neque tristique purus posuere venenatis mattis leo imperdiet.Eget turpis quam nulla pharetra eu enim enim. Eget nullam elementum nec pharetra in volutpat quam. Tellus egestas mauris congue elit erat feugiat turpis. Turpis in integer lectus dictum scelerisque amet. Nam lectus dis tristique tristique eros, nisl, urna. Tortor tortor massa, leo, tincidunt augue. Sit elit nequeurpis in integer lectus dictum scelerisque amet. Nam lectus dis tristique tristique eros, nisl, urna. Tortor tortor massa, leo, tincidunt augue. Sit elit neque',
                style: TextStyle(color: black122, fontSize: 17, height: 1.3),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        height: 70,
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        decoration: BoxDecoration(
            color: green77, borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset('assets/dummy/article.png')),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Bilal Cotton Galabiyya',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '₹ 1,523.68',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Spacer(),
            Text(
              'Buy Now',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }
}
