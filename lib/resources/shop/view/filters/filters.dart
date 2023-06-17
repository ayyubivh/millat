import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/shop/bloc/logic/category_bloc/category_bloc.dart';
import 'package:millat/utils/globals.dart';
import 'package:millat/utils/size_utility.dart';

class FiltersView extends StatefulWidget {
  const FiltersView({Key? key}) : super(key: key);

  @override
  State<FiltersView> createState() => _FiltersViewState();
}

class _FiltersViewState extends State<FiltersView> {
  int currentIndex = 0;
  final category = ['Category', 'Sub Category', 'Brand', 'Price'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Filters',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        ),
        centerTitle: false,
        leadingWidth: 0,
        leading: Container(),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.close,
                color: black189,
              ))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(height: 0),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: SizeUtility(context).width * 45 / 100,
                  height: SizeUtility(context).height,
                  color: black247,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        // buildFilter(
                        //     filterTitle: 'Category', selected: isSelected),
                        // buildFilter(
                        //     filterTitle: 'Sub Category', selected: isSelected),
                        // buildFilter(filterTitle: 'Brand', selected: isSelected),
                        // buildFilter(filterTitle: 'Price', selected: isSelected),
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: category.length,
                          itemBuilder: (context, index) {
                            final isSelected = currentIndex == index;

                            return ListTile(
                                onTap: () {
                                  setState(() {
                                    currentIndex = index;
                                  });
                                  print('object');
                                },
                                title: Text(
                                  category[index],
                                  style: TextStyle(
                                      color: isSelected ? green24 : black122),
                                ),
                                trailing: Icon(
                                  isSelected ? Icons.arrow_forward_ios : null,
                                  size: 15,
                                  color: green77,
                                ));
                          },
                        )
                      ],
                    ),
                  ),
                ),
                BlocBuilder<CategoryBloc, CategoryState>(
                  builder: (context, state) {
                    return Expanded(
                        child: ListView.builder(
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        print('${state.category!.result!.category!.where(
                              (e) => e.title == category[currentIndex],
                            ).toString()}');
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            color: redClr,
                            height: 50,
                            width: 60,
                            child: Text(state.category!.result!.category!
                                .where(
                                  (e) => e.title == category[currentIndex],
                                )
                                .toString()),
                          ),
                        );
                      },
                    ));
                  },
                )
// SingleChildScrollView(
                //   child: Column(
                //     children: [
                //       Padding(
                //         padding: const EdgeInsets.symmetric(
                //             horizontal: 20, vertical: 3),
                //         child: Row(
                //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //           children: [
                //             Text('Most loved brands',
                //                 style: TextStyle(color: black122)),
                //             Radio(
                //               value: true,
                //               groupValue: bool,
                //               activeColor: green77,
                //               onChanged: (value) {},
                //             )
                //           ],
                //         ),
                //       )
                //     ],
                //   ),
                // )
              ],
            ),
          )
        ],
      ),
      bottomSheet: Container(
        height: 50,
        margin: EdgeInsets.only(bottom: 20),
        child: Row(
          children: [
            Container(
              alignment: Alignment.center,
              width: SizeUtility(context).width * 45 / 100,
              child: Text('Clear All',
                  style: TextStyle(fontWeight: FontWeight.w700)),
            ),
            Container(
              color: green77,
              alignment: Alignment.center,
              width: SizeUtility(context).width * 55 / 100,
              child: Text('Apply',
                  style: TextStyle(
                      fontWeight: FontWeight.w700, color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}
