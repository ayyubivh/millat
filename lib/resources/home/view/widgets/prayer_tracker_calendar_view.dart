import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/home/bloc/logic/home_bloc/home_bloc.dart';
import 'package:millat/resources/home/bloc/logic/namaz_timing_bloc/namaz_timing_bloc.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:millat/utils/string_constants.dart';
import 'package:millat/utils/utils.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:table_calendar/table_calendar.dart';

class PrayerTrackerCalendarView extends StatefulWidget {
  const PrayerTrackerCalendarView({super.key});

  @override
  State<PrayerTrackerCalendarView> createState() =>
      _PrayerTrackerCalendarViewState();
}

class _PrayerTrackerCalendarViewState extends State<PrayerTrackerCalendarView> {
  DateTime today = DateTime.now();
  void _onDateSelected(DateTime date, DateTime focusDay) {
    setState(() {
      today = date;
    });
    context
        .read<HomeBloc>()
        .add(HomeEvent.fetchPrayerTrackerEvent(date: today, context: context));
  }

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
    );
    return WillPopScope(
      onWillPop: () async {
        context.read<HomeBloc>().add(HomeEvent.fetchPrayerTrackerEvent(
            date: DateTime.now(), context: context));
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          foregroundColor: ColorManager.blackColor,
          backgroundColor: ColorManager.whiteColor,
          title: const Text(
            Appstrings.myPerfomance,
            style: textStyle,
          ),
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TableCalendar(
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                focusedDay: today,
                calendarBuilders: CalendarBuilders(
                  selectedBuilder: (context, date, events) => Container(
                    margin: const EdgeInsets.all(4.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: ColorManager.mainColor.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text(
                      date.day.toString(),
                      style: TextStyle(
                        color: ColorManager.whiteColor,
                      ),
                    ),
                  ),
                  todayBuilder: (context, date, events) => Container(
                    margin: const EdgeInsets.all(4.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: ColorManager.mainColor,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text(
                      date.day.toString(),
                      style: TextStyle(
                        color: ColorManager.whiteColor,
                      ),
                    ),
                  ),
                  defaultBuilder: (context, date, events) {
                    if (date.isBefore(DateTime.now())) {
                      return Container(
                        margin: const EdgeInsets.all(4.0),
                        alignment: Alignment.center,
                        child: Text(
                          date.day.toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: date.weekday == DateTime.saturday ||
                                      date.weekday == DateTime.sunday
                                  ? ColorManager.blue5
                                  : ColorManager.black4F),
                        ),
                      );
                    } else {
                      return Container(
                        margin: const EdgeInsets.all(4.0),
                        alignment: Alignment.center,
                        child: Text(
                          date.day.toString(),
                          style: TextStyle(
                            color: ColorManager.textGrey,
                          ),
                        ),
                      );
                    }
                  },
                ),
                calendarStyle: CalendarStyle(
                  weekendTextStyle: TextStyle(
                    color: ColorManager.redColor,
                  ),
                ),
                selectedDayPredicate: (day) => isSameDay(day, today),
                headerStyle: HeaderStyle(
                  formatButtonVisible: false,
                  titleCentered: true,
                  titleTextStyle: TextStyle(
                    fontSize: 18,
                    color: ColorManager.blackColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onDaySelected: _onDateSelected,
              ),
              kHeight30,
              BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) => Text(
                  state.dailyPrayerTrackerDate,
                  style: textStyle,
                ),
              ),
              kHeight16,
              Container(
                height: 93,
                width: SizeUtility(context).width,
                decoration: BoxDecoration(
                  color: ColorManager.lightPrimaryGreenDE,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BlocBuilder<HomeBloc, HomeState>(
                      builder: (context, state) {
                        final prayerData = state;

                        return BlocBuilder<NamazTimingBloc, NamazTimingState>(
                          builder: (context, state) {
                            // final currentNamaz = state.currentNamaz;
                            // final currentNamazName =
                            //     currentNamaz?['name'] ?? '';
                            final namazTime = state.prayerModel?.data.timings;

                            // String fajrTime = namazTime?.fajr ?? "";
                            String sunriseTime = namazTime?.sunrise ?? "";
                            // String dhuhrTime = namazTime?.dhuhr ?? "";
                            String asrTime = namazTime?.asr ?? "";
                            String magribTime = namazTime?.maghrib ?? "";
                            String ishaTime = namazTime?.isha ?? "";
                            DateTime now = DateTime.now();

                            bool isFajr =
                                Utilities.isNamazTimeAfter(now, sunriseTime);
                            bool isDhuhr =
                                Utilities.isNamazTimeAfter(now, asrTime);
                            bool isAsr =
                                Utilities.isNamazTimeAfter(now, magribTime);
                            bool isMagrib =
                                Utilities.isNamazTimeAfter(now, ishaTime);
                            // bool isIsha =
                            //     Utilities.isNamazTimeAfter(now, fajrTime);
                            final nowFormatedDate =
                                Utilities.formatDate(now.toString());
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                namazTimingTrackerWidget(
                                  text: Appstrings.fajr,
                                  isCompleted: prayerData.prayerTrackerFajr,
                                  isUpcoming:
                                      prayerData.dailyPrayerTrackerDate ==
                                              nowFormatedDate
                                          ? isFajr
                                          : false,
                                ),
                                namazTimingTrackerWidget(
                                    text: Appstrings.dhuhr,
                                    isCompleted: prayerData.prayerTrackerDhuhr,
                                    isUpcoming:
                                        prayerData.dailyPrayerTrackerDate ==
                                                nowFormatedDate
                                            ? isDhuhr
                                            : false),
                                namazTimingTrackerWidget(
                                    text: Appstrings.asr,
                                    isCompleted: prayerData.prayerTrackerAsr,
                                    isUpcoming:
                                        prayerData.dailyPrayerTrackerDate ==
                                                nowFormatedDate
                                            ? isAsr
                                            : false),
                                namazTimingTrackerWidget(
                                    text: Appstrings.magrib,
                                    isCompleted: prayerData.prayerTrackerMagrib,
                                    isUpcoming:
                                        prayerData.dailyPrayerTrackerDate ==
                                                nowFormatedDate
                                            ? isMagrib
                                            : false),
                                namazTimingTrackerWidget(
                                  text: Appstrings.isha,
                                  isCompleted: prayerData.prayerTrackerIsha,
                                  isShowdivider: false,
                                  isUpcoming:
                                      prayerData.dailyPrayerTrackerDate ==
                                              nowFormatedDate
                                          ? true
                                          : false,
                                ),
                              ],
                            );
                          },
                        );
                      },
                    )
                  ],
                ),
              ),
              kHeight20,
              BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) => Text(
                  state.dailyPrayerTrackerDate,
                  style: textStyle,
                ),
              ),
              kHeight10,
              Container(
                  height: 160,
                  width: SizeUtility(context).width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: ColorManager.whiteColor,
                    boxShadow: [
                      BoxShadow(
                        color: ColorManager.blackColor.withOpacity(0.1),
                        blurRadius: 4,
                        spreadRadius: 3,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(14),
                  child: BlocBuilder<HomeBloc, HomeState>(
                    builder: (context, state) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        kHeight15,
                        Row(
                          children: [
                            CircularPercentIndicator(
                              radius: 20.0,
                              lineWidth: 3.0,
                              percent: state.namazCompletedCount / 5,
                              center: Text(
                                "${(state.namazCompletedCount / 5 * 100).toStringAsFixed(0)}%",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: ColorManager.primary),
                              ),
                              circularStrokeCap: CircularStrokeCap.round,
                              backgroundColor: Colors.grey,
                              progressColor: ColorManager.mainColor,
                            ),
                            kWidth10,
                            const Text(
                              "You have Performed",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "${state.namazCompletedCount.toInt()}/5",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: ColorManager.primary,
                              ),
                            ),
                          ],
                        ),
                        kHeight5,
                        const Text(
                          "prayers today",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        kHeight16,
                        Row(
                          children: [
                            Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                color: ColorManager.primary,
                                shape: BoxShape.circle,
                              ),
                            ),
                            kWidth5,
                            BlocBuilder<NamazTimingBloc, NamazTimingState>(
                              builder: (context, state) => Text(
                                "Next prayer ${state.upcomingNamaz?['name']}",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: ColorManager.textGrey,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  namazTimingTrackerWidget({
    required String text,
    required bool isCompleted,
    required bool isUpcoming,
    bool isShowdivider = true,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        kHeight5,
        SizedBox(
          height: 28,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              isCompleted == false && isUpcoming == true
                  ? Container(
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: ColorManager.whiteColor,
                      ),
                      padding: const EdgeInsets.all(1),
                    )
                  : isCompleted
                      ? Container(
                          height: 32,
                          width: 32,
                          // backgroundColor: ColorManager.primary,
                          // radius: 11,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: ColorManager.primary,
                          ),
                          child: Icon(
                            Icons.check,
                            size: 18,
                            color: ColorManager.whiteColor,
                          ),
                        )
                      : Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: ColorManager.lightRedColor,
                          ),
                          padding: const EdgeInsets.all(1),
                          child: Icon(
                            Icons.close,
                            color: ColorManager.whiteColor,
                            size: 16,
                          ),
                        ),
              isShowdivider
                  ? Container(
                      width: 40,
                      height: 2,
                      color: ColorManager.greyD9,
                    )
                  : const SizedBox()
            ],
          ),
        ),
        kHeight8,
        Text(
          text,
          style: TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w600,
            color: ColorManager.blackColor,
          ),
        ),
      ],
    );
  }
}
