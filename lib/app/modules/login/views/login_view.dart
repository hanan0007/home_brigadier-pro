import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../consts/media_query.dart';
import '../../../../utils/validation.dart';
import '../../../widgets/c_button.dart';
import '../../../widgets/c_text_feild.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    Get.put(LoginController);
    return Scaffold(
      extendBodyBehindAppBar: false,
      resizeToAvoidBottomInset: true,
      body: Obx(
        () => SizedBox(
            height: mediaQueryHeight(context),
            width: mediaQueryWidth(context),
            child: controller.isLoading.value
                ? const Center(child: CircularProgressIndicator())
                : SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    scrollDirection: Axis.vertical,
                    child: Form(
                      key: formKey,
                      child: SizedBox(
                        height: mediaQueryHeight(context),
                        width: mediaQueryWidth(context),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            SizedBox(height: mediaQueryHeight(context) * 0.25),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Login into\nAccount",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: mediaQueryWidth(context) * 0.09,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: mediaQueryHeight(context) * 0.28,
                              child: Column(
                                children: [
                                  CTextField(
                                    validator: (p0) {
                                      return GetValidation.emaiValidation(
                                          controller.emailController);
                                    },
                                    contentPadding: 15,
                                    prefexIcon: Icons.email_rounded,
                                    hint: 'Email',
                                    controller: controller.emailController,
                                    borderColor: Colors.transparent,

                                    borderRadius: 12,
                                    filled: true,
                                    autofillHints: const [AutofillHints.email],
                                    fillColor: Colors.grey.withOpacity(0.1),
                                    // keyboardType: TextInputType.emailAddress,
                                    textInputAction: TextInputAction.next,
                                  ),
                                  const SizedBox(height: 20),
                                  Obx(() => CTextField(
                                      contentPadding: 15,
                                      prefexIcon: Icons.lock,
                                      hint: 'Password',
                                      controller: controller.passwordController,
                                      borderColor: Colors.transparent,
                                      borderRadius: 12,
                                      filled: true,
                                      autofillHints: const [
                                        AutofillHints.password
                                      ],
                                      fillColor: Colors.grey.withOpacity(0.1),
                                      keyboardType: TextInputType.emailAddress,
                                      textInputAction: TextInputAction.done,
                                      validator: (p0) {
                                        return GetValidation.validate(
                                            controller.passwordController.text,
                                            "password");
                                      },
                                      suffix: IconButton(
                                        onPressed: () => controller.onObx(),
                                        icon: controller.obx.value
                                            ? const Icon(Icons.visibility)
                                            : const Icon(Icons.visibility_off),
                                      ))),
                                  const SizedBox(height: 20),
                                  SizedBox(
                                    width: mediaQueryWidth(context) * 0.9,
                                    child: const Align(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        textAlign: TextAlign.start,
                                        "Forgot Password",
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: mediaQueryHeight(context) * 0.25,
                            ),
                            CButton(
                                text: "Login",
                                fontsize: 14,
                                fontWeight: FontWeight.w500,
                                shadow: true,
                                ontab: () {
                                  if (formKey.currentState!.validate()) {
                                    controller.login();
                                  }
                                }),
                          ],
                        ),
                      ),
                    ),
                  )),
      ),
    );
  }
}
