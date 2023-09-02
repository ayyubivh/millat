import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/home/bloc/logic/hadith_bloc/bloc/hadith_bloc.dart';
import 'package:millat/resources/home/view/hadith/widgets/hadith_book_view.dart';
import 'package:millat/resources/home/view/hadith/widgets/hadith_books_card.dart';
import 'package:millat/resources/home/view/hadith/widgets/hadith_search_view.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/loader.dart';
import 'package:millat/utils/string_constants.dart';

class HadithView extends StatefulWidget {
  const HadithView({
    Key? key,
  }) : super(key: key);

  @override
  State<HadithView> createState() => _HadithViewState();
}

class _HadithViewState extends State<HadithView> {
  @override
  void initState() {
    BlocProvider.of<HadithBloc>(context).add(const FetchHadithBookEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.whiteColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(85),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF5FD3A1),
                Color(0xFF00A05B),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Appstrings.haditCollection,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '9 ${Appstrings.books}',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            actions: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const HadithSearchView(),
                  ));
                },
                child: const ImageIcon(
                  AssetImage(AppAssetsStrings.searchIcon),
                ),
              ),
              kWidth15,
              GestureDetector(
                onTap: () {},
                child: const ImageIcon(
                  AssetImage(AppAssetsStrings.settingsIcon),
                ),
              ),
              kWidth15,
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _bookMarkTile(),
              kHeight10,
              const Divider(thickness: 1),
              kHeight20,
              BlocBuilder<HadithBloc, HadithState>(
                builder: (context, state) {
                  if (state.isLoading || state.hadithBookModel == null) {
                    return const Loader();
                  }

                  return GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: state.hadithBookModel?.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 19,
                      mainAxisSpacing: 19,
                    ),
                    itemBuilder: (context, index) {
                      final book = state.hadithBookModel![index];
                      return HaditBooksCard(
                        onTap: () {
                          context.read<HadithBloc>().add(
                              FetchHadithBooksChapterEvent(
                                  slug: state.hadithBookModel![index].bookSlug
                                      .toString()));
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const HadithBookView(),
                          ));
                        },
                        bookName: book.bookName.toString(),
                      );
                    },
                  );
                },
              )
            ],
          ),
        ),
      ),
      // bottomSheet: Container(
      //   margin: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
      //   height: 48,
      //   width: MediaQuery.of(context).size.width,
      //   decoration: BoxDecoration(
      //     color: ColorManager.whiteColor,
      //     gradient: const LinearGradient(
      //       colors: [
      //         Color(0xFF5FD3A1),
      //         Color(0xFF00A05B),
      //       ],
      //       begin: Alignment.centerLeft,
      //       end: Alignment.centerRight,
      //     ),
      //     borderRadius: BorderRadius.circular(8.0),
      //   ),
      //   child: ElevatedButton(
      //     style: ElevatedButton.styleFrom(
      //       backgroundColor: Colors.transparent,
      //       elevation: 0,
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(8.0),
      //       ),
      //     ),
      //     onPressed: () {
      //       Navigator.of(context).push(MaterialPageRoute(
      //         builder: (context) => const HadithBookView(),
      //       ));
      //     },
      //     child: Container(
      //       alignment: Alignment.center,
      //       child: Text(
      //         'Read Now',
      //         style: TextStyle(
      //           color: ColorManager.whiteColor,
      //           fontSize: 16,
      //         ),
      //       ),
      //     ),
      //   ),
      // )
    );
  }

  ListTile _bookMarkTile() {
    return ListTile(
      title: Text(
        Appstrings.bookmarks,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          height: 2,
          color: ColorManager.blackColor,
        ),
      ),
      subtitle: Text(
        '2 Items',
        style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: ColorManager.blackColor),
      ),
      trailing: Icon(
        Icons.navigate_next,
        color: ColorManager.blackColor,
      ),
    );
  }
}
