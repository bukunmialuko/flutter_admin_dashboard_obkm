import 'package:admin_dashboard/src/navigation/navigation_service.dart';
import 'package:admin_dashboard/src/pages/routes/routes.dart';
import 'package:admin_dashboard/src/res/colors.dart';
import 'package:admin_dashboard/src/shared/exc_button.dart';
import 'package:admin_dashboard/src/shared/input_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: const [
                _FormSection(),
                _ImageSection(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _FormSection extends StatelessWidget {
  const _FormSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.neutral,
      width: 448,
      child: CustomScrollView(
        slivers: [
          const SliverPadding(padding: EdgeInsets.only(top: 130)),
          SliverToBoxAdapter(
            child: Container(
              color: AppColors.neutral,
              width: 448,
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/svg/logo.svg",
                    width: 90,
                    height: 55.5,
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    "Sign Up",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25.63),
                  ),
                  const SizedBox(height: 41),
                  Row(
                    children: [
                      WonsButton(
                        height: 50,
                        width: 162,
                        horizontalPadding: 0,
                        color: AppColors.background,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 18,
                              height: 18,
                              child: SvgPicture.asset(
                                "assets/svg/google.svg",
                                width: 18,
                                height: 18,
                              ),
                            ),
                            const SizedBox(width: 18),
                            const Text(
                              "Google",
                              style: TextStyle(color: AppColors.primary, fontWeight: FontWeight.w500, fontSize: 16),
                            )
                          ],
                        ),
                        onPressed: () {},
                      ),
                      const SizedBox(width: 22),
                      WonsButton(
                        height: 50,
                        width: 162,
                        horizontalPadding: 0,
                        color: AppColors.background,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 18,
                              height: 18,
                              child: SvgPicture.asset(
                                "assets/svg/facebook.svg",
                              ),
                            ),
                            const SizedBox(width: 18),
                            const Text(
                              "Facebook",
                              style: TextStyle(color: AppColors.primary, fontWeight: FontWeight.w500, fontSize: 16),
                            )
                          ],
                        ),
                        onPressed: () {},
                      )
                    ],
                  ),
                  const SizedBox(height: 25),
                  Row(
                    children: const [
                      Flexible(child: Divider()),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 13),
                        child: Text(
                          "Or",
                          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                      ),
                      Flexible(child: Divider()),
                    ],
                  ),
                  const SizedBox(height: 31),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Full Name",
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                  ),
                  const SizedBox(height: 9),
                  InputText(
                    labelText: "Jiangyu",
                    keyboardType: TextInputType.visiblePassword,
                    onChanged: (value) {},
                    onSaved: (val) {},
                    textInputAction: TextInputAction.done,
                    isPassword: false,
                    enabled: true,
                  ),
                  const SizedBox(height: 20),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Email Address",
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                  ),
                  const SizedBox(height: 9),
                  InputText(
                    labelText: "example@gmail.com",
                    keyboardType: TextInputType.visiblePassword,
                    onChanged: (value) {},
                    onSaved: (val) {},
                    textInputAction: TextInputAction.done,
                    isPassword: false,
                    enabled: true,
                  ),
                  const SizedBox(height: 20),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "User name",
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                  ),
                  const SizedBox(height: 9),
                  InputText(
                    labelText: "johnkevine4362",
                    keyboardType: TextInputType.visiblePassword,
                    onChanged: (value) {},
                    onSaved: (val) {},
                    textInputAction: TextInputAction.done,
                    isPassword: false,
                    enabled: true,
                  ),
                  const SizedBox(height: 20),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Password",
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                  ),
                  const SizedBox(height: 9),
                  InputText(
                    labelText: "********",
                    keyboardType: TextInputType.visiblePassword,
                    onChanged: (value) {},
                    onSaved: (val) {},
                    textInputAction: TextInputAction.done,
                    isPassword: true,
                    enabled: true,
                    suffixIcon: visibilityToggle(togglePasswordVisibility, true),
                  ),
                  const SizedBox(height: 25),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 20, child: Checkbox(value: false, onChanged: (newValue) {})),
                      const SizedBox(width: 10),
                      Expanded(
                        child: RichText(
                          overflow: TextOverflow.clip,
                          text: const TextSpan(
                            text: 'By creating an account you agree to the',
                            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, height: 1.4),
                            children: <TextSpan>[
                              TextSpan(
                                text: ' terms of use',
                                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: AppColors.primary),
                              ),
                              TextSpan(text: ' and our '),
                              TextSpan(
                                text: 'privacy policy.',
                                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: AppColors.primary),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 40),
                  WonsButton(
                    height: 50,
                    width: 348,
                    verticalPadding: 0,
                    color: AppColors.primary,
                    child: const Text(
                      "Create account",
                      style: TextStyle(color: AppColors.neutral, fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    onPressed: () {},
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already have an account?",
                        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                      TextButton(
                        onPressed: () {
                          GetIt.I.get<NavigationService>().to(routeName: PageRoutes.signup);
                        },
                        child: const Text(
                          " Log in",
                          style: TextStyle(color: AppColors.primary, fontWeight: FontWeight.w500, fontSize: 16),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SliverPadding(padding: EdgeInsets.only(top: 200)),
        ],
      ),
    );
  }

  togglePasswordVisibility() {}
}

class _ImageSection extends StatelessWidget {
  const _ImageSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Center(
        child: SvgPicture.asset(
          "assets/svg/login.svg",
          width: 647,
          height: 602,
        ),
      ),
    );
  }
}
