import 'dart:async';

import 'package:myfestivalpoast_app/Routes/festivalpost_routes.dart';

import '../../utilies/headers.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  void changeScreen(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.of(context).pushReplacementNamed(
          AppRoutes.festivalPage,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 6), () {});
    changeScreen(context);

    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/category/diwali1.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
