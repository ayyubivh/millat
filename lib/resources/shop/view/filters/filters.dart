import 'package:flutter/material.dart';
import 'package:millat/utils/globals.dart';
import 'package:millat/utils/size_utility.dart';

class FiltersView extends StatefulWidget {
  const FiltersView({Key? key}) : super(key: key);

  @override
  State<FiltersView> createState() => _FiltersViewState();
}

class _FiltersViewState extends State<FiltersView> {
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
                        buildFilter(filterTitle: 'Category', selected: true),
                        buildFilter(
                            filterTitle: 'Sub Category', selected: false),
                        buildFilter(filterTitle: 'Brand', selected: false),
                        buildFilter(filterTitle: 'Price', selected: false),
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Most loved brands',
                                style: TextStyle(color: black122)),
                            Radio(
                              value: true,
                              groupValue: bool,
                              activeColor: green77,
                              onChanged: (value) {},
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
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

  Widget buildFilter({required String filterTitle, required bool selected}) {
    return ListTile(
      onTap: () {},
      title: Text(filterTitle,
          style: TextStyle(color: selected ? green77 : black122)),
      trailing: selected
          ? Icon(
              Icons.arrow_forward_ios,
              size: 15,
              color: green77,
            )
          : null,
    );
  }
}
