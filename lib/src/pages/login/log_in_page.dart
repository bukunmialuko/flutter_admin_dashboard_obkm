import 'package:admin_dashboard/src/navigation/navigation_service.dart';
import 'package:admin_dashboard/src/pages/routes/routes.dart';
import 'package:admin_dashboard/src/res/colors.dart';
import 'package:admin_dashboard/src/shared/exc_button.dart';
import 'package:admin_dashboard/src/shared/input_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                _FormSection(),
                _ImageSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _FormSection extends StatelessWidget {
  const _FormSection();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.neutral,
      width: 448,
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/svg/logo.svg',
            width: 90,
            height: 55.5,
          ),
          const SizedBox(height: 30),
          const Text(
            'Log in',
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
                onPressed: () {},
                child: Row(
                  children: [
                    SizedBox(
                      width: 18,
                      height: 18,
                      child: SvgPicture.asset(
                        'assets/svg/google.svg',
                        width: 18,
                        height: 18,
                      ),
                    ),
                    const SizedBox(width: 18),
                    const Text(
                      'Google',
                      style: TextStyle(
                        color: AppColors.primary,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 22),
              WonsButton(
                height: 50,
                width: 162,
                horizontalPadding: 0,
                color: AppColors.background,
                onPressed: () {},
                child: Row(
                  children: [
                    SizedBox(
                      width: 18,
                      height: 18,
                      child: SvgPicture.asset('assets/svg/facebook.svg'),
                    ),
                    const SizedBox(width: 18),
                    const Text(
                      'Facebook',
                      style: TextStyle(
                        color: AppColors.primary,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 25),
          const Row(
            children: [
              Flexible(child: Divider()),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 13),
                child: Text(
                  'Or',
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
              'Email Address',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            ),
          ),
          const SizedBox(height: 9),
          InputText(
            labelText: 'example@gmail.com',
            keyboardType: TextInputType.emailAddress,
            onChanged: (value) {},
            onSaved: (val) {},
            textInputAction: TextInputAction.next,
          ),
          const SizedBox(height: 20),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Password',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            ),
          ),
          const SizedBox(height: 9),
          InputText(
            labelText: '********',
            keyboardType: TextInputType.visiblePassword,
            onChanged: (value) {},
            onSaved: (val) {},
            textInputAction: TextInputAction.done,
            isPassword: true,
            suffixIcon: visibilityToggle(null, true),
          ),
          const SizedBox(height: 25),
          Row(
            children: [
              SizedBox(
                width: 20,
                child: Checkbox(value: false, onChanged: (newValue) {}),
              ),
              const SizedBox(width: 10),
              const Text(
                'Remember me',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
              const Spacer(),
              const Text(
                'Reset Password?',
                style: TextStyle(
                  color: AppColors.primary,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
          WonsButton(
            height: 50,
            width: 348,
            verticalPadding: 0,
            color: AppColors.primary,
            onPressed: () {},
            child: const Text(
              'Log in',
              style: TextStyle(
                color: AppColors.neutral,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Don’t have account yet?',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  foregroundColor: Colors.transparent,
                  disabledForegroundColor: Colors.transparent,
                ),
                onPressed: () {
                  GetIt.I
                      .get<NavigationService>()
                      .to<void>(routeName: PageRoutes.signup);
                },
                child: const Text(
                  ' New Account',
                  style: TextStyle(
                    color: AppColors.primary,
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ImageSection extends StatelessWidget {
  const _ImageSection();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: SvgPicture.asset(
          'assets/svg/login.svg',
          width: 647,
          height: 602,
        ),
      ),
    );
  }
}
