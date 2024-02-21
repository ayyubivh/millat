// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:millat/components/debounce/debounce.dart';
import 'package:millat/enums/enumertations.dart';
import 'package:millat/resources/travel/bloc/logic/travel_bloc.dart';
import 'package:millat/resources/travel/view/widget/travel_search_textfield.dart';
import 'package:millat/routes/app_router_constants.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/loader.dart';
import 'package:millat/utils/size_utility.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../utils/string_constants.dart';

class TravelSearchView extends StatelessWidget {
  const TravelSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    final widgets = [
      const SearchWidget(),
      AddDatesGuest(
        text: Appstrings.addDates,
        onTap: () {
          BlocProvider.of<TravelBloc>(context).add(const ShowCalendarEvent());
        },
      ),
      // AddDatesGuest(
      //   text: Appstrings.addGuests,
      //   onTap: () {},
      // ),
    ];
    return Scaffold(
      backgroundColor: ColorManager.scaffoldBgColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorManager.appBarColor,
        foregroundColor: ColorManager.blackColor,
        centerTitle: true,
        title: const Text(
          Appstrings.search,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: ListView.builder(
          itemCount: widgets.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 14),
              child: widgets[index],
            );
          },
        ),
      ),
      bottomSheet: Container(
        height: 85,
        width: SizeUtility(context).width,
        color: ColorManager.scaffoldBgColor,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        child: BlocBuilder<TravelBloc, TravelState>(
          builder: (context, state) => GestureDetector(
            onTap: () {
              List<String> numParts = state.searchedLocation.split(', ');
              if (numParts.length == 2) {
                String location = numParts[0];
                String country = numParts[1];
                BlocProvider.of<TravelBloc>(context)
                    .add(FetchTravelSearchedProducts(
                  country: country,
                  location: location,
                  startDate: state.formattedDateRang,
                  endDate: state.formattedDateRang,
                ));
                context.pushNamed(MyAppRouteConstants.travelPackagesView,
                    pathParameters: {
                      "title": "Products"
                    },
                    extra: {
                      "type": TravelsPackagesType.search,
                      "city": " ",
                      "country": "",
                    });
              }
            },
            child: Container(
              width: 165,
              height: 50,
              decoration: BoxDecoration(
                  color: ColorManager.primary,
                  borderRadius: BorderRadius.circular(6)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageIcon(
                    const AssetImage(AppAssetsStrings.searchIcon),
                    color: ColorManager.whiteColor,
                    size: 20,
                  ),
                  kWidth3,
                  Text(
                    Appstrings.search,
                    style: TextStyle(
                      fontSize: 15,
                      color: ColorManager.whiteColor,
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
}

class AddDatesGuest extends StatefulWidget {
  final String text;
  final VoidCallback onTap;
  const AddDatesGuest({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  State<AddDatesGuest> createState() => _AddDatesGuestState();
}

class _AddDatesGuestState extends State<AddDatesGuest> {
  // _onSelectDate(DateTime selectedDay, DateTime focusedDay) {
  //   setState(() {
  //     _selectedDate = selectedDay;
  //     _focusDay = focusedDay;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TravelBloc, TravelState>(
      builder: (context, state) => Container(
        height: state.showCalendar == false ? 440 : 70,
        width: SizeUtility(context).width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: ColorManager.whiteColor,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  widget.text,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: ColorManager.black4F,
                  ),
                ),
                const Spacer(),
                TextButton.icon(
                    onPressed: widget.onTap,
                    icon: Icon(
                      Icons.add,
                      color: ColorManager.primary,
                    ),
                    label: Text(
                      widget.text,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: ColorManager.primary,
                      ),
                    ))
              ],
            ),
            state.showCalendar == false
                ? TableCalendar(
                    firstDay: DateTime.utc(2010, 10, 16),
                    lastDay: DateTime.utc(2030, 3, 14),
                    focusedDay: state.focusDay,
                    rangeStartDay: state.selectedStartDate,
                    rangeEndDay: state.selectedEndDate,
                    onRangeSelected: (start, end, focusedDay) {
                      BlocProvider.of<TravelBloc>(context).add(
                          TravelEvent.selectDateRangeEvent(
                              start: start ?? DateTime.now(),
                              end: end ?? DateTime.now(),
                              focusedDay: focusedDay));
                    },
                    rangeSelectionMode: RangeSelectionMode.toggledOn,
                    calendarBuilders: CalendarBuilders(
                      withinRangeBuilder: (context, day, focusedDay) {
                        return Container(
                          decoration: BoxDecoration(
                            color: ColorManager.darkWhiteF0,
                          ),
                          child: Center(
                            child: Text(
                              day.day.toString(),
                              style: TextStyle(
                                color: ColorManager.blackColor,
                              ),
                            ),
                          ),
                        );
                      },
                      rangeHighlightBuilder: (context, day, isWithinRange) {
                        if (isWithinRange) {
                          return Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: ColorManager.darkWhiteF0,
                            ),
                          );
                        }
                        return null;
                      },
                      rangeStartBuilder: (context, day, focusedDay) {
                        return Container(
                          margin: const EdgeInsets.all(4.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: ColorManager.primary,
                              shape: BoxShape.circle),
                          child: Text(
                            day.day.toString(),
                            style: TextStyle(
                              color: ColorManager.whiteColor,
                            ),
                          ),
                        );
                      },
                      rangeEndBuilder: (context, day, focusedDay) {
                        return Container(
                          margin: const EdgeInsets.all(4.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: ColorManager.primary,
                              shape: BoxShape.circle),
                          child: Text(
                            day.day.toString(),
                            style: TextStyle(
                              color: ColorManager.whiteColor,
                            ),
                          ),
                        );
                      },
                      selectedBuilder: (context, date, events) => Container(
                        margin: const EdgeInsets.all(4.0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: ColorManager.darkWhite,
                        ),
                        child: Text(
                          date.day.toString(),
                          style: TextStyle(
                            color: ColorManager.blackColor,
                          ),
                        ),
                      ),
                      todayBuilder: (context, date, events) => Container(
                        margin: const EdgeInsets.all(4.0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: ColorManager.mainColor.withOpacity(0.5),
                            shape: BoxShape.circle),
                        child: Text(
                          date.day.toString(),
                          style: TextStyle(
                            color: ColorManager.whiteColor,
                          ),
                        ),
                      ),
                    ),
                    calendarStyle: CalendarStyle(
                      weekendTextStyle: TextStyle(
                        color: ColorManager.redColor,
                      ),
                    ),
                    selectedDayPredicate: (day) =>
                        isSameDay(DateTime.now(), day),
                    headerStyle: HeaderStyle(
                      formatButtonVisible: false,
                      titleCentered: true,
                      titleTextStyle: TextStyle(
                        fontSize: 18,
                        color: ColorManager.blackColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // onDaySelected: _onSelectDate,
                  )
                : const SizedBox()
          ],
        ),
      ),
    );
  }
}

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final debounce = Debouncer(milliseconds: 1000);

    return BlocBuilder<TravelBloc, TravelState>(
      builder: (context, state) => state.searchedLocation != ""
          ? GestureDetector(
              onTap: () {
                BlocProvider.of<TravelBloc>(context)
                    .add(const TravelEvent.resetSearchData());
              },
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding: const EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: ColorManager.whiteColor),
                height: 58,
                width: SizeUtility(context).width,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Text(
                        state.searchedLocation,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      Icon(
                        Icons.search,
                        color: ColorManager.primary,
                      )
                    ],
                  ),
                ),
              ),
            )
          : Column(
              children: [
                kHeight10,
                BlocBuilder<TravelBloc, TravelState>(
                  builder: (context, state) {
                    final searchState = state.travelSearchLocationModels;

                    return Container(
                      height: searchState == null ? 200 : 400,
                      width: SizeUtility(context).width,
                      decoration: BoxDecoration(
                        color: ColorManager.whiteColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            Appstrings.whereTo,
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          kHeight8,
                          TravelSearchTextField(
                            onChanged: (value) {
                              debounce.run(() {
                                BlocProvider.of<TravelBloc>(context).add(
                                    TravelEvent.fetchTravelSearchLocations(
                                        searchquery: value));
                              });
                            },
                            icon: Icon(
                              Icons.search,
                              color: ColorManager.blackColor,
                            ),
                            hint: Appstrings.searchYourDestination,
                          ),
                          kHeight15,
                          Text(
                            state.searchSuccess,
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                          state.isLoading
                              ? const Loader()
                              : Expanded(
                                  child: ListView.builder(
                                    itemCount: state.travelSearchLocationModels
                                            ?.length ??
                                        1,
                                    itemBuilder: (context, countryIndex) {
                                      final countryData =
                                          state.travelSearchLocationModels?[
                                              countryIndex];

                                      return GestureDetector(
                                        onTap: () {
                                          BlocProvider.of<TravelBloc>(context)
                                              .add(SaveSearchLocation(
                                                  location:
                                                      "${countryData?.city ?? ""}, ${countryData?.country ?? ""}"));
                                        },
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 8.0),
                                              child: Row(
                                                children: [
                                                  Flexible(
                                                    child: Text(
                                                      countryData?.city != null
                                                          ? '${countryData?.city}, '
                                                          : '',
                                                      style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 16,
                                                      ),
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      maxLines: 1,
                                                    ),
                                                  ),
                                                  Flexible(
                                                    child: Text(
                                                      countryData?.country ??
                                                          "",
                                                      style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 16,
                                                      ),
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      maxLines: 1,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                )
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
    );
  }
}
