import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/authentication/bloc/logic/database_bloc/database_bloc.dart';
import 'package:millat/resources/home/bloc/logic/home_bloc/home_bloc.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/string_constants.dart';
import 'package:millat/utils/utils.dart';

import '../../../../utils/color_manager.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        final id =
            context.read<HomeBloc>().state.notificationModel?.result?.data;
        context.read<HomeBloc>().add(AddMarkReadNotificationEvent(
            id: id?[0].id ?? "", context: context));
        return Future.value(true);
      },
      child: Scaffold(
        backgroundColor: ColorManager.scaffoldBgColor,
        appBar: AppBar(
          foregroundColor: ColorManager.blackColor,
          elevation: 0,
          backgroundColor: ColorManager.whiteColor,
          centerTitle: true,
          title: const Text(
            Appstrings.notifications,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        body: BlocProvider(
          create: (context) =>
              HomeBloc()..add(FetchNotificationApi(context: context)),
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              final data = state.notificationModel?.result?.data;
              return ListView.builder(
                  itemCount: data?.length,
                  itemBuilder: (context, index) {
                    final userId = context
                        .read<DatabaseBloc>()
                        .state
                        .authUserModel
                        ?.result
                        ?.user
                        ?.id;

                    final isRead = data?[index].isReadByUser?.contains(userId);

                    return Column(
                      children: [
                        Container(
                          color: isRead == true
                              ? ColorManager.whiteColor
                              : ColorManager.lightGreenD6,
                          padding: const EdgeInsets.symmetric(
                            vertical: 16,
                            horizontal: 20,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  isRead == false
                                      ? CircleAvatar(
                                          radius: 3,
                                          backgroundColor: ColorManager.primary,
                                        )
                                      : const SizedBox(),
                                  kWidth10,
                                  SizedBox(
                                    height: 40,
                                    width: SizeUtility(context).width / 2,
                                    child: Text(
                                      data?[index].title ?? "",
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        height: 1.2,
                                      ),
                                    ),
                                  ),
                                  const Spacer(),
                                  Text(
                                    Utilities.formatTimeAgo(
                                        data?[index].sendAt ?? ""),
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: ColorManager.black4F,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          color: ColorManager.greyD1,
                          height: 2,
                          width: double.infinity,
                        )
                      ],
                    );
                  });
            },
          ),
        ),
      ),
    );
  }
}
