import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ngpiteapp/app/config/string_manager.dart';
import 'package:ngpiteapp/app/config/style_manager.dart';
import 'package:ngpiteapp/screens/custom_widgets/bottun_custom.dart';
import 'package:ngpiteapp/screens/custom_widgets/default_button.dart';
import 'package:ngpiteapp/screens/custom_widgets/text_field_custom.dart';
import '../../../app/config/assets_manager.dart';
import 'package:ngpiteapp/app/config/color_manager.dart';
import 'package:ngpiteapp/app/config/values_manager.dart';
import 'package:ngpiteapp/data/enums/loading_state_enum.dart';
import 'package:ngpiteapp/screens/custom_widgets/error_nointernet.dart';
import 'package:ngpiteapp/screens/login_page/login_page_logic.dart';

class OtpPage extends GetView<LoginPageController> {
  const OtpPage({super.key});

  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorManager.whiteColor,
        body: Obx(
          () => SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(AppSizeScreen.screenWidth*0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  
                  SizedBox(height: AppSizeScreen.screenHeight * 0.05,),
                  Text(StringManager.emailVerification.tr , style: StyleManager.h1_Bold()),
                  Text(StringManager.LoginOrSignUp.tr, style: StyleManager.body01_Regular() ),
                  SizedBox(height: AppSizeScreen.screenHeight * 0.05,),
                  Text(StringManager.enterPhoneNumber.tr, style: StyleManager.body01_Semibold()),
                  PhoneNumberField(controller: controller),
                  SizedBox(height: AppSizeScreen.screenHeight * 0.1,),
                  DefaultButton(press: () {
                  }, text: "In OTP PAGE NOW", loading: false,),
                  SizedBox(height: AppSizeScreen.screenHeight * 0.05,),
                  TermsAndPrivacy(),
                  Container(child: Text("${controller.x.value}"),)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TermsAndPrivacy extends StatelessWidget {
  const TermsAndPrivacy({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
    
    Text(StringManager.byClicking.tr, style: StyleManager.body01_Regular(fontsize: AppSize.s12)),
    InkWell(child: Text(StringManager.termsAndConditions.tr , style: StyleManager.body01_Semibold(fontsize: AppSize.s12),)),
    Text(StringManager.andSign.tr, style: StyleManager.body01_Regular(fontsize: AppSize.s12)),
    InkWell(child: Text(StringManager.privacyPolicy.tr , style: StyleManager.body01_Semibold(fontsize: AppSize.s12),)),
    ],);
  }
}

class PhoneNumberField extends StatelessWidget {
  const PhoneNumberField({
    super.key,
    required this.controller,
  });

  final LoginPageController controller;

  @override
  Widget build(BuildContext context) {
    return TextFieldCustom(
        controller: controller.textEditingController,
        title: "" , 
        isNumberPhone: true,
        keyboardType: TextInputType.number,
        );
  }
}
