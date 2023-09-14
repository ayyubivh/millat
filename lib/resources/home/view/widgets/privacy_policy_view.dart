import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/profile/bloc/logic/terms_and_condtions_bloc/terms_and_condtions_bloc.dart';
import 'package:millat/utils/constants.dart';
import 'package:millat/utils/loader.dart';
import 'package:millat/utils/utils.dart';
import '../../../../utils/color_manager.dart';
import '../../../../utils/string_constants.dart';

class PrivacyPolicyView extends StatelessWidget {
  const PrivacyPolicyView({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<TermsAndCondtionsBloc>(context)
          .add(const FetchTermsAndConditionsEvent(slug: "privacy_policy"));
    });
    return Scaffold(
      appBar: AppBar(
        foregroundColor: ColorManager.blackColor,
        elevation: 0,
        backgroundColor: ColorManager.whiteColor,
        centerTitle: true,
        title: const Text(
          Appstrings.privacyPolicy,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: BlocBuilder<TermsAndCondtionsBloc, TermsAndCondtionsState>(
        builder: (context, state) {
          final data = state.termsConditionsModel?.result.data.content;
          return state.isLoading
              ? const Loader()
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30)
                      .copyWith(bottom: 10),
                  child: ListView.builder(
                    itemCount: data?.length,
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          kHeight20,
                          Text(
                            data?[index].title ?? "",
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          kHeight20,
                          Text(
                            Utilities.removeFootnotesFromMeaning(
                                data?[index].html ?? ""),
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: ColorManager.black4F,
                              height: 1.2,
                            ),
                          ),
                        ],
                      );
                    },
                  ));
        },
      ),
      // bottomSheet: Padding(
      //     padding: const EdgeInsets.symmetric(
      //       horizontal: 30,
      //       vertical: 20,
      //     ),
      //     child: MainButton(
      //       title: Appstrings.agree,
      //       onPressed: () {},
      //     ))
    );
  }
}
