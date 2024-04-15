import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myfestivalpoast_app/utilies/festivalpost_utiles.dart';

import '../Routes/festivalpost_routes.dart';

Widget categoryList() {
  return GridView(
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 1,
      mainAxisSpacing: 5,
      crossAxisSpacing: 5,
      mainAxisExtent: 250,
    ),
    children: allFestival
        .map(
          (e) => StatefulBuilder(
            builder: (context, setState) => GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(
                    AppRoutes.festivalpostcategorypage,
                    arguments: e);
              },
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Card(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black12,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 20.0,
                        ),
                      ],
                      image: DecorationImage(
                        image: AssetImage(
                          e.post_frame,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    padding: const EdgeInsets.all(16),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.3),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                e.name,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                e.slogan,
                                style: const TextStyle(
                                  color: Color(0xffFEECE2),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Spacer(),
                              Text(
                                e.date,
                                style: TextStyle(
                                  color: Colors.grey.shade300,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
        .toList(),
  );
}
