import 'package:admin_dashboard/src/navigation/navigation_service.dart';
import 'package:admin_dashboard/src/pages/routes/routes.dart';
import 'package:admin_dashboard/src/res/colors.dart';
import 'package:admin_dashboard/src/shared/exc_button.dart';
import 'package:admin_dashboard/src/shared/input_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';

class RecoverPage extends StatelessWidget {
  const RecoverPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Container(
          height: 658,
          width: 658,
          color: AppColors.neutral,
          padding: const EdgeInsets.symmetric(horizontal: 78),
          child: Column(
            children: [
              const SizedBox(height: 160),
              SvgPicture.asset(
                "assets/svg/logo.svg",
                width: 90,
                height: 55.5,
              ),
              const SizedBox(height: 30),
              const Text(
                "Recover",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25.63),
              ),
              const SizedBox(height: 60),
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
              const SizedBox(height: 25),
              WonsButton(
                height: 50,
                width: 502,
                verticalPadding: 0,
                color: AppColors.primary,
                child: const Text(
                  "Reset Your Password",
                  style: TextStyle(color: AppColors.neutral, fontWeight: FontWeight.w400, fontSize: 14),
                ),
                onPressed: () {
                  GetIt.I.get<NavigationService>().to(routeName: PageRoutes.confirm);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
