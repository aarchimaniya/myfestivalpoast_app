import 'dart:collection';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:myfestivalpoast_app/Routes/festivalpost_routes.dart';
import 'package:myfestivalpoast_app/modals/festivalpost_appmodals.dart';
import 'package:myfestivalpoast_app/utilies/festivalpost_utiles.dart';

class FestivalCategoryPage extends StatefulWidget {
  const FestivalCategoryPage({super.key});

  @override
  State<FestivalCategoryPage> createState() => _FestivalCategoryPage();
}

class _FestivalCategoryPage extends State<FestivalCategoryPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    Festival selCategory =
        ModalRoute.of(context)!.settings.arguments as Festival;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffaad1cb),
        title: Text(selCategory.date),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                AppRoutes.festivalpostdetailpage,
                arguments: selCategory,
              );
            },
            icon: Icon(Icons.edit),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(selCategory.post_frame),
            fit: BoxFit.cover,
          ),
        ),
        padding: const EdgeInsets.all(10),
        alignment: Alignment.topCenter,
        child: Container(
          height: 200,
          width: size.width,
          color: Colors.black26,
          padding: const EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                selCategory.name,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  color: Colors.white,
                ),
              ),
              Text(
                selCategory.slogan,
                style: TextStyle(
                  fontSize: 16,
                  letterSpacing: 1,
                  color: Colors.white,
                ),
              ),
              Text(
                selCategory.date,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
