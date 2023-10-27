import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/resources/home/bloc/logic/tasbih_bloc/tasbih_bloc.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/loader.dart';

class ChooseDhikrView extends StatelessWidget {
  const ChooseDhikrView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.whiteColor,
      appBar: AppBar(
        title: const Text(
          'Choose Dhikr',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        backgroundColor: ColorManager.whiteColor,
        foregroundColor: ColorManager.blackColor,
        elevation: 1,
      ),
      body: BlocProvider(
        create: (context) => TasbihBloc()..add(const FetchDhikr()),
        child: BlocBuilder<TasbihBloc, TasbihState>(builder: (context, state) {
          if (state.dhikrModel?.result?.data == null) {
            return const Loader();
          }
          return ListView.separated(
            separatorBuilder: (context, index) => const Divider(thickness: 1),
            itemCount: state.dhikrModel!.result!.data.length,
            itemBuilder: (context, index) {
              final data = state.dhikrModel!.result!.data[index];
              return GestureDetector(
                onTap: () {
                  context.read<TasbihBloc>().add(SelectDhikerEvent(
                      dikr: data.content!,
                      translate: data.meaning!,
                      id: data.id!));
                  print('here id ${data.id}');
                  context.pop();
                },
                child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(Icons.play_circle_outline),
                            Column(
                              children: [
                                Text(
                                  data.content!,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: ColorManager.primary,
                                      fontFamily: "Hafs"),
                                ),
                                kHeight10,
                                Text(
                                  data.meaning!,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: ColorManager.blackColor,
                                  ),
                                ),
                                kHeight8,
                                // Text(
                                //   'Allah is Greatest',
                                //   style: TextStyle(
                                //     fontSize: 14,
                                //     fontWeight: FontWeight.w600,
                                //     color: ColorManager.black4F,
                                //   ),
                                // ),
                              ],
                            )
                          ],
                        )
                      ],
                    )),
              );
            },
          );
        }),
      ),
    );
  }
}
