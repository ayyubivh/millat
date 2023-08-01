// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/components/textFields/custom_text_field.dart';
import 'package:millat/enums/enumertations.dart';
import 'package:millat/resources/home/bloc/logic/bookmark_bloc/bookmark_bloc.dart';
import 'package:millat/resources/home/bloc/logic/quran_bloc/quran_bloc.dart';
import 'package:millat/resources/home/view/al_quran/widgets/add_sura_search_view.dart';
import 'package:millat/resources/home/view/al_quran/widgets/verses-view.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import '../../../../../components/buttons/main_button.dart';
import '../../../../../utils/size_utility.dart';
import '../../../bloc/models/book_mark_hive_model/book_mark_hive_model.dart';

class AddNewBookMarkCollection extends StatefulWidget {
  final BookMarkCollectionType type;
  final BookMarktCollectionModel? passvalue;
  const AddNewBookMarkCollection({
    Key? key,
    required this.type,
    this.passvalue,
  }) : super(key: key);

  @override
  State<AddNewBookMarkCollection> createState() =>
      _AddNewBookMarkCollectionState();
}

class _AddNewBookMarkCollectionState extends State<AddNewBookMarkCollection> {
  final TextEditingController nameTextEditingController =
      TextEditingController();
  final TextEditingController descriptionTextEditingController =
      TextEditingController();
  String img = "";

  @override
  void initState() {
    widget.type == BookMarkCollectionType.edit ? addField() : null;
    context.read<BookmarkBloc>().add(const SaveImageEvent(img: ""));

    super.initState();
  }

  addField() {
    nameTextEditingController.text = widget.passvalue!.name;
    descriptionTextEditingController.text = widget.passvalue!.discription;
    img = widget.passvalue!.image;
  }

  @override
  void dispose() {
    nameTextEditingController.dispose();
    descriptionTextEditingController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.whiteColor,
      appBar: customAppBarBookMark(ctx: context, passValue: widget.passvalue),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kHeight25,
            BlocBuilder<BookmarkBloc, BookmarkState>(
              builder: (context, state) {
                if (img.isNotEmpty) {
                  return Align(
                      alignment: Alignment.center,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Stack(
                            children: [
                              Image.asset(widget.passvalue!.image.toString()),
                              Positioned(
                                right: -3,
                                child: InkWell(
                                  onTap: () {
                                    img = "";
                                    showModalBottomSheet(
                                      backgroundColor: Colors.transparent,
                                      context: context,
                                      isScrollControlled: true,
                                      builder: (context) => StatefulBuilder(
                                        builder: (context, setState) {
                                          return _popUpWidget(context);
                                        },
                                      ),
                                    );
                                  },
                                  child: Container(
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                      color: ColorManager.whiteColor,
                                      borderRadius: BorderRadius.circular(13),
                                    ),
                                    child: ImageIcon(
                                      const AssetImage(
                                          "assets/icons/edit_2.png"),
                                      color: ColorManager.primary,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )));
                }
                return state.image.isEmpty
                    ? _dottedbutton(context)
                    : InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            backgroundColor: Colors.transparent,
                            context: context,
                            isScrollControlled: true,
                            builder: (context) => StatefulBuilder(
                              builder: (context, setState) {
                                return _popUpWidget(context);
                              },
                            ),
                          );
                        },
                        child: Align(
                          alignment: Alignment.center,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                state.image,
                                width: 156,
                                height: 151,
                              )),
                        ),
                      );
              },
            ),
            kHeight20,
            const Text(
              'Collection Name',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            kHeight15,
            CustomTextField(
              controller: nameTextEditingController,
              icon: const Icon(null),
              hint: "Give a Name",
              onChanged: (value) {
                context.read<BookmarkBloc>().add(NameChanged(nameValue: value));
              },
            ),
            kHeight20,
            const Text(
              'Discription',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            kHeight15,
            CustomTextField(
              controller: descriptionTextEditingController,
              icon: const Icon(null),
              hint: "Add Description",
              onChanged: (value) {
                context
                    .read<BookmarkBloc>()
                    .add(DescriptionChanged(descriptionValue: value));
              },
            ),
            kHeight30,
            MainButton(
              title: "Add Suras",
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const AddSuraSearchView(),
                ));
              },
            ),
            kHeight25,
            BlocBuilder<QuranBloc, QuranState>(
              builder: (context, state) {
                return state.versesByKeyModel == []
                    ? const SizedBox()
                    : Expanded(
                        child: ListView.builder(
                          itemCount: state.versesByKeyModel!.length,
                          itemBuilder: (context, index) => ListTile(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) {
                                  return const VersesView(
                                    type: Qurantype.verse,
                                  );
                                },
                              ));
                            },
                            leading: ImageIcon(
                              const AssetImage("assets/images/folder_red.png"),
                              color: ColorManager.primary,
                            ),
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  state.versesByKeyModel![index].verses[0]
                                      .textIndopak,
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  maxLines: 1,
                                  textDirection: TextDirection.rtl,
                                ),
                                Text(
                                  state.versesByKeyModel![index].verses[0]
                                      .verseKey,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: ColorManager.textGrey,
                                  ),
                                ),
                              ],
                            ),
                            trailing: Icon(
                              Icons.navigate_next,
                              size: 30,
                              color: ColorManager.blackColor,
                            ),
                          ),
                        ),
                      );
              },
            )
          ],
        ),
      ),
    );
  }

  PreferredSize customAppBarBookMark(
      {required BuildContext ctx,
      required BookMarktCollectionModel? passValue}) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(54),
      child: Stack(
        fit: StackFit.expand,
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: 50,
            color: ColorManager.appBarColor,
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 50)
                .copyWith(bottom: 0),
            child: Align(
                alignment: Alignment.topCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        context
                            .read<BookmarkBloc>()
                            .add(const SaveQuranChapterId(id: []));

                        Navigator.of(ctx).pop();
                      },
                      child: Text(
                        "Cancel",
                        style: TextStyle(
                          fontSize: 17,
                          color: ColorManager.redColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      'Create Collection',
                      style: TextStyle(
                        color: ColorManager.blackColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    BlocBuilder<BookmarkBloc, BookmarkState>(
                      builder: (context, state) => GestureDetector(
                        onTap: () {
                          if (nameTextEditingController.text.isEmpty ||
                              descriptionTextEditingController.text.isEmpty) {
                            return;
                          }
                          widget.type == BookMarkCollectionType.add
                              ? ctx.read<BookmarkBloc>().add(AddCollection(
                                  context: context,
                                  name: nameTextEditingController.text,
                                  description:
                                      descriptionTextEditingController.text,
                                  verskey: state.verskey,
                                  image: state.image,
                                  dbId: DateTime.now()
                                      .millisecondsSinceEpoch
                                      .toString()))
                              : ctx.read<BookmarkBloc>().add(
                                    EditCollection(
                                        context: context,
                                        name: nameTextEditingController.text,
                                        description:
                                            descriptionTextEditingController
                                                .text,
                                        verskey: state.verskey == []
                                            ? passValue!.verseKey
                                            : state.verskey,
                                        image: img == "" ? state.image : img,
                                        dbId: passValue!.id!),
                                  );
                          context
                              .read<BookmarkBloc>()
                              .add(const SaveQuranChapterId(id: []));
                          // context
                          //     .read<BookmarkBloc>()
                          //     .add(  FetchCollectionItem());
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          'Done',
                          style: TextStyle(
                            color: ColorManager.primary,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }

  Widget _dottedbutton(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          backgroundColor: Colors.transparent,
          context: context,
          isScrollControlled: true,
          builder: (context) => StatefulBuilder(
            builder: (context, setState) {
              return _popUpWidget(context);
            },
          ),
        );
      },
      child: Align(
        alignment: Alignment.center,
        child: DottedBorder(
          dashPattern: const [5, 5],
          strokeWidth: 1.5,
          borderType: BorderType.RRect,
          radius: const Radius.circular(12),
          padding: const EdgeInsets.all(6),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            child: SizedBox(
              height: 155,
              width: 160,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/add_image_1.png"),
                  kHeight10,
                  const Text(
                    'Choose Image',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container _popUpWidget(BuildContext context) {
    return Container(
      height: SizeUtility(context).height * 0.90,
      decoration: BoxDecoration(
        color: ColorManager.whiteColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
      ),
      child: GridView.builder(
        itemCount: 8,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                context.read<BookmarkBloc>().add(SaveImageEvent(
                    img: "assets/images/bookmark_profile_${index + 1}.png"));
                Navigator.of(context).pop();
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  "assets/images/bookmark_profile_${index + 1}.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
