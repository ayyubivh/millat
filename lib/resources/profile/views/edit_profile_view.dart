import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:millat/components/buttons/main_button.dart';
import 'package:millat/resources/authentication/bloc/logic/database_bloc/database_bloc.dart';
import 'package:millat/resources/profile/views/user_profile_view.dart';
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
    _emailController.text = data?.email ?? "";
    _dateofBirthcontroller.text = data?.dob ?? "";
    _companyController.text = data?.institution ?? "";
    _professionController.text = data?.profession ?? "";
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
          title: const Text(Appstrings.editProfile,
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w700)),
          centerTitle: false,
          leading: const BackButton(color: Colors.black),
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: [
            GestureDetector(
              onTap: () {
                logoutPopUp(context);
              },
              child: Icon(
                Icons.logout,
                color: ColorManager.blackColor,
              ),
            ),
            kWidth15,
          ],
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
                      SizedBox(
                        width: double.infinity,
                        height: 180,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            AppAssetsStrings.profileCoverImg,
                            fit: BoxFit.cover,
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
                                  height: 360,
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
                                            return Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                              ),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(14),
                                                child: Image.asset(
                                                  "assets/images/cover_photo_${index + 1}.png",
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                      const Text(
                                        'Or',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      kHeight15,
                                      const Divider(thickness: 1),
                                      kHeight10,
                                      _textWidget('Take New Photo'),
                                      kHeight10,
                                      const Divider(thickness: 1),
                                      kHeight10,
                                      _textWidget('Select an Existing Photo'),
                                      kHeight10,
                                      const Divider(thickness: 1),
                                      kHeight10,
                                      Text(
                                        'Cancel',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: ColorManager.redColor,
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
                _textFieldWidget(
                  controller: _nameController,
                  textFieldName: Appstrings.fullName,
                  hintName: Appstrings.fullName,
                  textInputType: TextInputType.name,
                ),
                _textFieldWidget(
                  controller: _userNameController,
                  textFieldName: Appstrings.userName,
                  hintName: Appstrings.userName,
                  textInputType: TextInputType.name,
                ),
                _textFieldWidget(
                    controller: _dateofBirthcontroller,
                    textFieldName: Appstrings.dateOfBirth,
                    hintName: Appstrings.dateOfBirth,
                    textInputType: TextInputType.datetime,
                    icon: ImageIcon(
                      const AssetImage(AppAssetsStrings.dateIcon),
                      color: ColorManager.blackColor,
                      size: 10,
                    )),
                _textFieldWidget(
                    controller: _emailController,
                    textFieldName: Appstrings.email,
                    hintName: Appstrings.email,
                    textInputType: TextInputType.emailAddress,
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
                    icon: ImageIcon(
                      const AssetImage(AppAssetsStrings.mailIcon),
                      color: ColorManager.blackColor,
                      size: 10,
                    )),
                _textFieldWidget(
                    controller: _phoneController,
                    textFieldName: Appstrings.mobileNumber,
                    hintName: Appstrings.mobileNumber,
                    textInputType: TextInputType.name,
                    maxLength: 10),
                _textFieldWidget(
                  controller: _professionController,
                  textFieldName: Appstrings.profession,
                  hintName: Appstrings.profession,
                  textInputType: TextInputType.name,
                ),
                _textFieldWidget(
                  controller: _companyController,
                  textFieldName: Appstrings.companyOrStudy,
                  hintName: Appstrings.companyOrStudy,
                  textInputType: TextInputType.name,
                ),
                kHeight15,
                MainButton(
                  title: "Save",
                  onPressed: () {
                    final img = context
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
                    Navigator.of(context).pop();
                  },
                )
              ],
            ),
          ),
        ));
  }

  Text _textWidget(String text) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w500,
        color: ColorManager.primary,
      ),
    );
  }

  Widget _textFieldWidget(
      {required String hintName,
      required String textFieldName,
      int? maxLength,
      TextInputType? textInputType,
      required TextEditingController controller,
      String? Function(String? val)? validator,
      ImageIcon? icon}) {
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
