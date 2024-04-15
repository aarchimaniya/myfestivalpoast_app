import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:myfestivalpoast_app/festival_page/festival_page.dart';

import 'package:myfestivalpoast_app/home_page/components/appbar.dart';
import 'package:myfestivalpoast_app/utilies/festivalpost_utiles.dart';

import '../../modals/festivalpost_appmodals.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void showRandomQuote() {
    Random r = Random();

    String category = "All";

    List<Festival> l = allFestivalData
        .where(
          (element) => element == category,
        )
        .cast<Festival>()
        .toList();

    Festival q = l[r.nextInt(l.length)];

    showDialog(
      context: context,
      builder: (context) => SimpleDialog(
        title: const Text("Welcome !!"),
        contentPadding: const EdgeInsets.all(16),
        children: [
          Text(q.slogan),
        ],
      ),
    );
  }

  @override
  void initState() {
    Future.delayed(
      const Duration(milliseconds: 500),
      () {
        showRandomQuote();
      },
    );

    super.initState();
  }

  bool _isList = true;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text("Do you want to exit ? "),
            backgroundColor: Colors.greenAccent.withOpacity(0.2),
            actions: [
              ElevatedButton(
                onPressed: () {
                  exit(0);
                },
                child: const Text("Yes"),
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("No"),
              ),
            ],
          ),
        );
      },
      child: Scaffold(
        appBar: appBar(
          isList: _isList,
          toggleList: () {
            _isList = !_isList;
            setState(() {});
          },
        ),
        backgroundColor: const Color(0xffFEECE2),
        body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/category/bgImage.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: categoryList(),
        ),
      ),
    );
  }
}
