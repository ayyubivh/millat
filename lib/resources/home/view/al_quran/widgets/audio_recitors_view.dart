import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/home/bloc/logic/quran_bloc/quran_bloc.dart';
import 'package:millat/resources/home/view/al_quran/widgets/al_quran_appbar.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/loader.dart';

class AudioRecitorsView extends StatelessWidget {
  const AudioRecitorsView({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // BlocProvider.of<QuranBloc>(context).add(const FetchAllRecitors());
    });
    return Scaffold(
        backgroundColor: ColorManager.whiteColor,
        appBar: alQuranAppbar(
          context: context,
          onTap: () {},
          text: "Audio Recitors",
          color: ColorManager.appBarColor,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: BlocBuilder<QuranBloc, QuranState>(
            builder: (context, state) {
              if (state.recitationsModel?.recitations == null) {
                return const Loader();
              }
              return Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: ColorManager.veryLightGreen,
                  borderRadius: BorderRadius.circular(6),
                ),
                padding: const EdgeInsets.all(20),
                child: ListView.separated(
                  itemCount: state.recitationsModel!.recitations.length,
                  itemBuilder: (context, index) {
                    final data = state.recitationsModel!.recitations[index];
                    return GestureDetector(
                      onTap: () {
                        // context.read<QuranBloc>().add(SaveRecitorNameAndId(
                        //     recitorId: data.id, recitorName: data.recitorName));
                        // Navigator.of(context).pop();
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                '  data.recitorName',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: ColorManager.blackColor,
                                ),
                              ),
                              const Spacer(),
                              const Icon(Icons.navigate_next),
                            ],
                          ),
                          kHeight10,
                          Text(
                            data.style ?? "Empty",
                          )
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) =>
                      const Divider(thickness: 1),
                ),
              );
            },
          ),
        ));
  }
}
