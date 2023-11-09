import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:millat/resources/travel/bloc/logic/travel_bloc.dart';
import 'package:millat/resources/travel/view/widget/travel_textformfield.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/loader.dart';
import 'package:millat/utils/string_constants.dart';
import 'package:millat/utils/utils.dart';

import '../../../components/buttons/main_button.dart';
import '../../../utils/assets_paths.dart';
import '../../../utils/constants.dart';
import '../../../utils/size_utility.dart';
import '../../authentication/bloc/logic/database_bloc/database_bloc.dart';

class TravelBookingForm extends StatefulWidget {
  const TravelBookingForm({super.key, required this.id});
  final String id;
  @override
  State<TravelBookingForm> createState() => _TravelBookingFormState();
}

class _TravelBookingFormState extends State<TravelBookingForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  @override
  void initState() {
    BlocProvider.of<TravelBloc>(context)
        .add(TravelEvent.fetchTravelProductById(id: widget.id));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TravelBloc, TravelState>(
      listener: (context, state) {
        if (state.bookingSuccess) {
          _successDialogueBox(context);
        }
      },
      builder: (context, state) => state.isLoading
          ? const Loader()
          : Scaffold(
              backgroundColor: ColorManager.scaffoldBgColor,
              appBar: AppBar(
                backgroundColor: ColorManager.whiteColor,
                foregroundColor: ColorManager.blackColor,
                centerTitle: true,
                elevation: 0,
                title: Text(
                  Appstrings.bookingForm,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: ColorManager.blackColor,
                  ),
                ),
              ),
              body: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      BlocBuilder<TravelBloc, TravelState>(
                        builder: (context, state) {
                          final data = state.travelProductsModel?.product;
                          if (data == null) {
                            return const Loader();
                          }
                          return Container(
                            width: SizeUtility(context).width,
                            decoration: BoxDecoration(
                              color: ColorManager.whiteColor,
                              border: Border.all(
                                color: ColorManager.whiteE0,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(12),
                                        child:
                                            Utilities().buildCachedNetworkImage(
                                          imageUrl: data.images![0],
                                          width: 60,
                                          height: 60,
                                        )),
                                    kWidth10,
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          data.name ?? "",
                                          style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        kHeight10,
                                        Row(
                                          children: [
                                            ImageIcon(
                                              const AssetImage(
                                                AppAssetsStrings.locations,
                                              ),
                                              size: 16,
                                              color: ColorManager.lightGrey85,
                                            ),
                                            kWidth10,
                                            Text(
                                              data.location ?? "",
                                              style: const TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                kHeight5,
                                const Divider(),
                                kHeight5,
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        ImageIcon(
                                          const AssetImage(
                                              AppAssetsStrings.discount_2),
                                          size: 16,
                                          color: ColorManager.greyB4,
                                        ),
                                        kWidth3,
                                        Text(
                                          data.price.toString(),
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                            color: ColorManager.primary,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ImageIcon(
                                          const AssetImage(
                                              AppAssetsStrings.starIcon),
                                          size: 16,
                                          color: ColorManager.greyB4,
                                        ),
                                        kWidth3,
                                        Text(
                                          data.rating.toString(),
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                            color: ColorManager.blackColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    Row(
                                      children: [
                                        ImageIcon(
                                          const AssetImage(
                                              AppAssetsStrings.dateIcon),
                                          size: 16,
                                          color: ColorManager.greyB4,
                                        ),
                                        kWidth3,
                                        Text(
                                          Utilities.formatDate(
                                              DateTime.now().toString()),
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                            color: ColorManager.blackColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          );
                        },
                      ),
                      kHeight16,
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: ColorManager.whiteColor,
                        ),
                        padding: const EdgeInsets.all(12),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _textFieldNameWidget(Appstrings.fullName),
                              TravelTextformField(
                                controller: _nameController,
                                validator: (val) {
                                  if (val == null || val.isEmpty) {
                                    return '${Appstrings.fullName} is required';
                                  }
                                  return null;
                                },
                                hint: Appstrings.fullName,
                                icon: ImageIcon(
                                  const AssetImage(
                                      AppAssetsStrings.personalInfo),
                                  color: ColorManager.lightGreyA3,
                                ),
                                textInputType: TextInputType.name,
                              ),
                              _textFieldNameWidget(Appstrings.email),
                              TravelTextformField(
                                controller: _emailController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Email is required';
                                  }
                                  final emailRegExp = RegExp(
                                      r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
                                  if (!emailRegExp.hasMatch(value)) {
                                    return 'Enter a valid email address';
                                  }
                                  return null;
                                },
                                hint: Appstrings.email,
                                icon: ImageIcon(
                                  const AssetImage(
                                      AppAssetsStrings.travelEmail),
                                  color: ColorManager.lightGreyA3,
                                ),
                                textInputType: TextInputType.emailAddress,
                              ),
                              _textFieldNameWidget(Appstrings.phoneNumber),
                              TravelTextformField(
                                maxLength: 10,
                                controller: _phoneController,
                                validator: (val) {
                                  if (val == null || val.isEmpty) {
                                    return '${Appstrings.phoneNumber} is required';
                                  }
                                  return null;
                                },
                                hint: Appstrings.phoneNumber,
                                icon: ImageIcon(
                                  const AssetImage(AppAssetsStrings.call),
                                  color: ColorManager.lightGreyA3,
                                ),
                                textInputType: TextInputType.phone,
                              ),
                              _textFieldNameWidget(Appstrings.countryRegion),
                              BlocBuilder<TravelBloc, TravelState>(
                                builder: (context, state) {
                                  final country = state.country;
                                  return GestureDetector(
                                    onTap: () {
                                      _showCountries(context);
                                    },
                                    child: Container(
                                      height: 60,
                                      width: SizeUtility(context).width,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          border: Border.all(
                                            color: ColorManager.greyD1,
                                          )),
                                      padding: const EdgeInsets.only(left: 16),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          country.isEmpty
                                              ? Appstrings.selectCountry
                                              : country,
                                          style: TextStyle(
                                            color: ColorManager.lightGrey85,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                              kHeight16,
                              Text(
                                Appstrings.guests,
                                style: TextStyle(
                                  color: ColorManager.lightGreyA3,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              kHeight10,
                              Container(
                                height: 60,
                                width: SizeUtility(context).width,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      color: ColorManager.greyD1,
                                    )),
                                child: BlocBuilder<TravelBloc, TravelState>(
                                  builder: (context, state) {
                                    return Row(
                                      children: [
                                        kWidth15,
                                        ImageIcon(
                                          const AssetImage(
                                              AppAssetsStrings.guests),
                                          color: ColorManager.lightGreyA3,
                                        ),
                                        kWidth15,
                                        _guestAddwidget(
                                            ColorManager.lightGreyA3,
                                            Icons.remove, () {
                                          if (state.numberOfGuest != 0) {
                                            context.read<TravelBloc>().add(
                                                const DecreaseGuestEvent());
                                          }
                                        }),
                                        kWidth10,
                                        Text(state.numberOfGuest.toString()),
                                        kWidth10,
                                        _guestAddwidget(
                                            ColorManager.blackColor, Icons.add,
                                            () {
                                          context
                                              .read<TravelBloc>()
                                              .add(const IncreaseGuestEvent());
                                        }),
                                      ],
                                    );
                                  },
                                ),
                              ),
                              kHeight16,
                              Text(
                                Appstrings.uploadPassport,
                                style: TextStyle(
                                  color: ColorManager.lightGreyA3,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              kHeight10,
                              BlocBuilder<DatabaseBloc, DatabaseState>(
                                builder: (context, state) => GestureDetector(
                                  onTap: () {
                                    BlocProvider.of<DatabaseBloc>(context).add(
                                        const UploadImageEvent(
                                            source: ImageSource.gallery));
                                  },
                                  child: Container(
                                    height: 113,
                                    width: SizeUtility(context).width,
                                    decoration: BoxDecoration(
                                      color: ColorManager.whiteColor,
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                        color: ColorManager.whiteE0,
                                      ),
                                    ),
                                    child: state.imagebytes != null
                                        ? Image(
                                            image: FileImage(state.imagebytes!))
                                        : Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              ImageIcon(
                                                const AssetImage(
                                                  AppAssetsStrings.imageUpload,
                                                ),
                                                color: ColorManager.lightGreyA3,
                                              ),
                                              kHeight10,
                                              Text(
                                                Appstrings.uploadImages,
                                                style: TextStyle(
                                                  color:
                                                      ColorManager.lightGreyA3,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ],
                                          ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      kHeight50,
                    ],
                  ),
                ),
              ),
              bottomSheet: Container(
                height: 65,
                padding: const EdgeInsets.symmetric(horizontal: 30)
                    .copyWith(bottom: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: BlocBuilder<DatabaseBloc, DatabaseState>(
                    builder: (context, state) {
                      final _img = state.imagebytes;

                      return BlocBuilder<TravelBloc, TravelState>(
                        builder: (context, state) {
                          final country = state.country;
                          return MainButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                print(
                                    "text editing controller values ${_nameController.text}\n${_emailController.text}\n${_phoneController.text}");
                                BlocProvider.of<TravelBloc>(context)
                                    .add(TravelEvent.bookTravelEvent(
                                  name: _nameController.text,
                                  email: _emailController.text,
                                  phoneNumber: _phoneController.text,
                                  passPortPhoto: _img,
                                  country: country,
                                  productId: widget.id,
                                ));
                              }
                            },
                            title: Appstrings.submit,
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ),
    );
  }

  Future<dynamic> _successDialogueBox(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Popup Title'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                AppAssetsStrings.travelBookingSuccess,
                height: 100,
              ),
              kHeight20,
              const Text(Appstrings.bookingCompleted,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  )),
              kHeight10,
              Text(
                Appstrings.bookingCompletedDesc,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: ColorManager.lightGrey85,
                  height: 1.3,
                ),
                textAlign: TextAlign.center,
              ),
              kHeight16,
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: MainButton(
                  title: Appstrings.backToHome,
                  onPressed: () {
                    BlocProvider.of<TravelBloc>(context)
                        .add(const TravelBookingCompleted());
                    for (int i = 0; i < 3; i++) {
                      context.pop();
                    }
                  },
                ),
              )
            ],
          ),
        );
      },
    );
  }

  _showCountries(BuildContext context) {
    return showCountryPicker(
      context: context,
      onSelect: (Country country) {
        context
            .read<TravelBloc>()
            .add(TravelEvent.selectCountryEvent(country: country.name));
      },
      countryListTheme: CountryListThemeData(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
        ),
        inputDecoration: InputDecoration(
          labelText: 'Search',
          hintText: 'Start typing to search',
          prefixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorManager.grey08,
            ),
          ),
        ),
        searchTextStyle: TextStyle(
          color: ColorManager.primary,
          fontSize: 18,
        ),
      ),
    );
  }

  Widget _guestAddwidget(Color color, IconData icon, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 24,
        width: 24,
        decoration: BoxDecoration(
          color: ColorManager.whiteColor,
          shape: BoxShape.circle,
          border: Border.all(
            color: color,
          ),
        ),
        child: Center(
          child: Icon(
            icon,
            color: color,
            size: 16,
          ),
        ),
      ),
    );
  }

  Widget _textFieldNameWidget(
    String fieldName,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight16,
        Text(
          fieldName,
          style: TextStyle(
            color: ColorManager.lightGreyA3,
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
        kHeight16,
      ],
    );
  }
}
