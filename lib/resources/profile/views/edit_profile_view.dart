import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:millat/components/buttons/main_button.dart';
import 'package:millat/resources/authentication/bloc/logic/database_bloc/database_bloc.dart';
import 'package:millat/resources/profile/widgets/profile_textformfield_widget.dart';
import 'package:millat/utils/color_manager.dart';
import 'package:millat/utils/string_constants.dart';
import '../../../utils/assets_paths.dart';
import '../../../utils/constants.dart';
import '../../../utils/utils.dart';

class EditProfileView extends StatefulWidget {
  const EditProfileView({Key? key}) : super(key: key);

  @override
  State<EditProfileView> createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _dateofBirthcontroller = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _professionController = TextEditingController();
  final TextEditingController _companyController = TextEditingController();
  addField() {
    final data = context.read<DatabaseBloc>().state.authUserModel?.result?.user;
    _userNameController.text = data?.username ?? "";
    _nameController.text = data?.name ?? "";
    _emailController.text = data?.email ?? ".com";
    _dateofBirthcontroller.text = data?.dob ?? "";
    _companyController.text = data?.institution ?? "";
    _professionController.text = data?.profession ?? "";
    _phoneController.text = data?.pohneNumber ?? "";
  }

  DateTime? _selectedDate;
  int currentIndex = 0;
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
      builder: (context, child) {
        return Theme(
            data: ThemeData.light().copyWith(
              primaryColor: ColorManager.primary,
              colorScheme: ColorScheme.light(
                primary: ColorManager.primary,
              ),
            ),
            child: child!);
      },
    );

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;

        String formattedDate = DateFormat('MM-dd-yyyy').format(_selectedDate!);
        _dateofBirthcontroller.text = formattedDate;
      });
    }
  }

  @override
  void initState() {
    context.read<DatabaseBloc>().add(FetchAuthUser(context: context));
    addField();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(Appstrings.editProfile,
              style: TextStyle(
                color: ColorManager.blackColor,
                fontWeight: FontWeight.w700,
              )),
          centerTitle: false,
          leading: BackButton(color: ColorManager.blackColor),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 220,
                  child: Stack(
                    children: [
                      BlocBuilder<DatabaseBloc, DatabaseState>(
                        builder: (context, state) => SizedBox(
                          width: double.infinity,
                          height: 180,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              state.coverImage,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 12,
                        top: 12,
                        child: _editCircleAvatar(() {
                          showModalBottomSheet(
                            backgroundColor: Colors.transparent,
                            isScrollControlled: true,
                            context: context,
                            builder: (context) {
                              return StatefulBuilder(
                                builder: (context, setState) => Container(
                                  margin: const EdgeInsets.all(25),
                                  padding: const EdgeInsets.all(20),
                                  height: 250,
                                  decoration: BoxDecoration(
                                    color: ColorManager.whiteColor,
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: Column(
                                    children: [
                                      const Text(
                                        'Upload Cover Photo',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      kHeight8,
                                      const Divider(thickness: 1),
                                      kHeight10,
                                      Text(
                                        'Choose Cover From Our Collection',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: ColorManager.black4F,
                                        ),
                                      ),
                                      kHeight10,
                                      SizedBox(
                                        height: 70,
                                        child: ListView.builder(
                                          itemCount: 4,
                                          itemExtent: 90,
                                          scrollDirection: Axis.horizontal,
                                          itemBuilder: (context, index) {
                                            return GestureDetector(
                                              onTap: () {
                                                setState(
                                                  () {
                                                    currentIndex = index;
                                                  },
                                                );
                                                context
                                                    .read<DatabaseBloc>()
                                                    .add(SaveCoverImage(
                                                        image:
                                                            "assets/images/cover_photo_${currentIndex + 1}.png"));
                                                context.pop();
                                              },
                                              child: Container(
                                                margin:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 7),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(14),
                                                ),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(14),
                                                  child: Image.asset(
                                                    "assets/images/cover_photo_${index + 1}.png",
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                      // const Text(
                                      //   'Or',
                                      //   style: TextStyle(
                                      //     fontSize: 15,
                                      //     fontWeight: FontWeight.w500,
                                      //   ),
                                      // ),
                                      // kHeight15,
                                      // const Divider(thickness: 1),
                                      // kHeight10,
                                      // _textWidget('Take New Photo'),
                                      // kHeight10,
                                      // const Divider(thickness: 1),
                                      // kHeight10,
                                      // _textWidget('Select an Existing Photo'),
                                      // kHeight10,
                                      // const Divider(thickness: 1),
                                      kHeight25,
                                      GestureDetector(
                                        onTap: () {
                                          context.pop();
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          height: 30,
                                          width: double.infinity,
                                          child: Text(
                                            'Cancel',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                              color: ColorManager.redColor,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        }),
                      ),
                      Positioned(
                        top: 125,
                        left: 0,
                        right: 0,
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: BlocBuilder<DatabaseBloc, DatabaseState>(
                                builder: (context, state) {
                                  return CircleAvatar(
                                    radius: 45,
                                    backgroundColor: ColorManager.whiteColor,
                                    child: CircleAvatar(
                                      radius: 40,
                                      backgroundColor: ColorManager.dotGrey,
                                      child: (state.imagebytes == null &&
                                              (state.authUserModel?.result?.user
                                                          ?.picture ==
                                                      null ||
                                                  state.authUserModel?.result
                                                          ?.user?.picture ==
                                                      ""))
                                          ? Icon(
                                              Icons.person_2_outlined,
                                              size: 60,
                                              color: ColorManager.black4A,
                                            )
                                          : (state.authUserModel?.result?.user
                                                          ?.picture !=
                                                      null &&
                                                  state.authUserModel?.result
                                                          ?.user?.picture !=
                                                      "")
                                              ? ClipOval(
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        fit: BoxFit.cover,
                                                        image: state.imagebytes !=
                                                                null
                                                            ? FileImage(state
                                                                    .imagebytes!)
                                                                as ImageProvider<
                                                                    Object>
                                                            : NetworkImage(state
                                                                .authUserModel!
                                                                .result!
                                                                .user!
                                                                .picture!),
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              : (state.imagebytes != null)
                                                  ? ClipOval(
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          image:
                                                              DecorationImage(
                                                            fit: BoxFit.cover,
                                                            image: FileImage(state
                                                                .imagebytes!),
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                  : Icon(
                                                      Icons.person_2_outlined,
                                                      size: 60,
                                                      color:
                                                          ColorManager.black4A,
                                                    ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Positioned(
                              bottom: 8,
                              right: 0,
                              left: 50,
                              child: _editCircleAvatar(() {
                                context.read<DatabaseBloc>().add(
                                    const UploadImageEvent(
                                        source: ImageSource.gallery));
                              }),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      _textFieldWidget(
                        controller: _nameController,
                        textFieldName: Appstrings.fullName,
                        hintName: Appstrings.fullName,
                        textInputType: TextInputType.name,
                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            return "Full Name is required";
                          }
                          return null;
                        },
                      ),
                      _textFieldWidget(
                        controller: _userNameController,
                        textFieldName: Appstrings.userName,
                        hintName: Appstrings.userName,
                        textInputType: TextInputType.name,
                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            return "UserName is required";
                          }
                          return null;
                        },
                      ),
                      _textFieldWidget(
                        enabled: true,
                        controller: _dateofBirthcontroller,
                        textFieldName: Appstrings.dateOfBirth,
                        onTap: () {
                          _selectDate(context);
                        },
                        hintName: Appstrings.dateOfBirth,
                        textInputType: TextInputType.datetime,
                        icon: ImageIcon(
                          const AssetImage(AppAssetsStrings.dateIcon),
                          color: ColorManager.blackColor,
                          size: 10,
                        ),
                        // validator: (value) {
                        //   print("value of validator $value");
                        //   final RegExp dateRegex = RegExp(
                        //     r'^(0[1-9]|[12][0-9]|3[01])-(0[1-9]|1[0-2])-\d{4}$',
                        //   );

                        //   if (value == null || value.isEmpty) {
                        //     return 'Date of birth is required';
                        //   } else if (!dateRegex.hasMatch(value)) {
                        //     print('Invalid date format eg:(01-12-1997)');
                        //     return 'Invalid date format eg:(01-12-1997)';
                        //   }
                        //   return null;
                        // },
                      ),
                      // TextFormField(
                      //   readOnly: true, // Make the text field read-only
                      //   onTap: () {
                      //     // Show the date picker when the text field is tapped
                      //     _selectDate(context);
                      //   },
                      //   decoration: InputDecoration(
                      //     labelText: 'Date of Birth',
                      //     hintText: _selectedDate != null
                      //         ? '${_selectedDate!.toLocal()}'
                      //             .split(' ')[0] // Display selected date
                      //         : 'Select Date of Birth',
                      //   ),
                      // ),
                      _textFieldWidget(
                          controller: _emailController,
                          textFieldName: Appstrings.email,
                          hintName: Appstrings.email,
                          textInputType: TextInputType.emailAddress,
                          validator: (value) {
                            print(value);
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
                          icon: ImageIcon(
                            const AssetImage(AppAssetsStrings.mailIcon),
                            color: ColorManager.blackColor,
                            size: 10,
                          )),
                      _textFieldWidget(
                        controller: _phoneController,
                        textFieldName: Appstrings.mobileNumber,
                        hintName: Appstrings.mobileNumber,
                        textInputType: TextInputType.phone,
                        // maxLength: 12,
                        // validator: (val) {
                        //   if (val == null || val.isEmpty || val.length != 12) {
                        //     return "Phone Number is required";
                        //   }
                        //   return null;
                        // },
                      ),
                      _textFieldWidget(
                        controller: _professionController,
                        textFieldName: Appstrings.profession,
                        hintName: Appstrings.profession,
                        textInputType: TextInputType.name,
                        // validator: (val) {
                        //   if (val == null || val.isEmpty) {
                        //     return "Profession is required";
                        //   }
                        //   return null;
                        // },
                      ),
                      _textFieldWidget(
                        controller: _companyController,
                        textFieldName: Appstrings.companyOrStudy,
                        hintName: Appstrings.companyOrStudy,
                        textInputType: TextInputType.name,
                      ),
                    ],
                  ),
                ),
                kHeight15,
                MainButton(
                  title: "Save",
                  onPressed: () {
                    print(_dateofBirthcontroller.text);
                    String? img = context
                        .read<DatabaseBloc>()
                        .state
                        .authUserModel
                        ?.result
                        ?.user
                        ?.picture;

                    final email = context
                        .read<DatabaseBloc>()
                        .state
                        .authUserModel
                        ?.result
                        ?.user
                        ?.email;
                    dynamic stateImage;
                    if (img == null) {
                      stateImage =
                          context.read<DatabaseBloc>().state.imagebytes;
                    }
                    if (stateImage == null && img == null) {
                      return showSnackBar(context, "Please Select Image");
                    }
                    if (_dateofBirthcontroller.text == "") {
                      return showSnackBar(
                          context, "Please Select Date of Birth");
                    }

                    if (_professionController.text.isEmpty) {
                      return showSnackBar(
                          context, "Please Select the Proffession");
                    }

                    if (_formKey.currentState!.validate()) {
                      context.read<DatabaseBloc>().add(EditAuthUser(
                          context: context,
                          name: _nameController.text,
                          email: email == _emailController.text
                              ? null
                              : _emailController.text,
                          userName: _userNameController.text,
                          dob: _dateofBirthcontroller.text,
                          institution: _companyController.text,
                          profession: _professionController.text,
                          image: ''));

                      context
                          .read<DatabaseBloc>()
                          .add(FetchAuthUser(context: context));
                      context.pop();
                    } else {
                      print("not validated");
                    }
                  },
                ),
                kHeight20,
              ],
            ),
          ),
        ));
  }

  Widget _textFieldWidget({
    required String hintName,
    required String textFieldName,
    int? maxLength,
    TextInputType? textInputType,
    Function()? onTap,
    required TextEditingController controller,
    String? Function(String? val)? validator,
    ImageIcon? icon,
    bool? enabled,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          textFieldName,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
        kHeight10,
        ProfieEditTextFormField(
          enabled: enabled,
          onTap: onTap,
          maxLength: maxLength,
          controller: controller,
          icon: icon ?? const Icon(null),
          hint: hintName,
          textInputType: textInputType ?? TextInputType.none,
          validator: validator,
        ),
        kHeight15,
      ],
    );
  }

  Widget _editCircleAvatar(VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: 15,
        backgroundColor: ColorManager.whiteColor,
        child: Icon(
          Icons.edit_outlined,
          color: ColorManager.primary,
          size: 18,
        ),
      ),
    );
  }
}
