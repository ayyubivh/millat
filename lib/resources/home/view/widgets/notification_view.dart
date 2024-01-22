import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:millat/resources/authentication/bloc/logic/database_bloc/database_bloc.dart';
import 'package:millat/resources/home/bloc/logic/home_bloc/home_bloc.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/loader.dart';
import 'package:millat/utils/string_constants.dart';
import 'package:millat/utils/utils.dart';

import '../../../../utils/color_manager.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<HomeBloc>(context)
          .add(FetchNotificationApi(context: context));
    });
    return WillPopScope(
      onWillPop: () {
        final id =
            context.read<DatabaseBloc>().state.authUserModel?.result?.user?.id;
        context
            .read<HomeBloc>()
            .add(AddMarkReadNotificationEvent(id: id ?? "", context: context));
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
        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            final data = state.notificationModel?.result?.data;
            return data == null
                ? const Loader()
                : ListView.separated(
                    separatorBuilder: (context, index) => kHeight5,
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      final userId = context
                          .read<DatabaseBloc>()
                          .state
                          .authUserModel
                          ?.result
                          ?.user
                          ?.id;

                      final isRead = data[index].isReadByUser?.contains(userId);

                      return GestureDetector(
                        onTap: () {
                          if (data[index].url == null ||
                              data[index].url == "") {
                            context.pop();
                          } else {
                            context.pushReplacementNamed(
                                data[index].url.toString().replaceAll("/", ""));
                          }
                        },
                        child: Container(
                          color: isRead == true
                              ? ColorManager.whiteColor
                              : ColorManager.lightGreenD6,
                          padding: const EdgeInsets.symmetric(
                            vertical: 16,
                            horizontal: 20,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      isRead == false
                                          ? CircleAvatar(
                                              radius: 3,
                                              backgroundColor:
                                                  ColorManager.primary,
                                            )
                                          : const SizedBox(),
                                      Text(
                                        data[index].title ?? "",
                                        style: const TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Text(
                                    Utilities.formatTimeAgo(
                                        data[index].sendAt ?? ""),
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: ColorManager.black4F,
                                    ),
                                  ),
                                ],
                              ),
                              kHeight10,
                              Text(data[index].description ?? '')
                            ],
                          ),
                        ),
                      );
                    });
          },
        ),
      ),
    );
  }
}
