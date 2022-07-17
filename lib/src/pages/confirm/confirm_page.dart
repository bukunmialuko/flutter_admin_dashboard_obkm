import 'package:admin_dashboard/src/res/colors.dart';
import 'package:admin_dashboard/src/shared/exc_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ConfirmPage extends StatelessWidget {
  const ConfirmPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Container(
          height: 726,
          width: 726,
          color: AppColors.neutral,
          padding: const EdgeInsets.symmetric(horizontal: 78),
          child: Column(
            children: [
              const SizedBox(height: 160),
              SizedBox(
                width: 220,
                height: 199,
                child: SvgPicture.asset(
                  "assets/svg/confirm.svg",
                  width: 220,
                  height: 199,
                ),
              ),
              const SizedBox(height: 53),
              const Text(
                "Your account successfully created.",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25.63),
              ),
              const SizedBox(height: 36),
              WonsButton(
                height: 50,
                width: 169,
                verticalPadding: 0,
                color: AppColors.primary,
                child: const Text(
                  "Go to Home",
                  style: TextStyle(color: AppColors.neutral, fontWeight: FontWeight.w400, fontSize: 14),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
