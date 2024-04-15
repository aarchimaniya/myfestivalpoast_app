import 'dart:io';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/widgets.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:myfestivalpoast_app/modals/festivalpost_appmodals.dart';
import 'package:myfestivalpoast_app/utilies/festivalpost_utiles.dart';

import 'dart:ui' as ui;

import 'package:myfestivalpoast_app/utilies/fonts_enum.dart';
import 'package:share_extend/share_extend.dart';

class FestivalDetailPage extends StatefulWidget {
  const FestivalDetailPage({super.key});

  @override
  State<FestivalDetailPage> createState() => _FestivalDetailPageState();
}

class _FestivalDetailPageState extends State<FestivalDetailPage> {
  List<String> bgImages = [
    "https://i.pinimg.com/564x/53/b6/6d/53b66de209a9bcad1f5cf01f3d867f0d.jpg",
    "https://i.pinimg.com/564x/af/f7/e9/aff7e9b12b2058042ab25369b82ff974.jpg",
    "https://i.pinimg.com/564x/de/b6/41/deb6418998ce23aebbeec6b15ac8cd8e.jpg",
    "https://i.pinimg.com/736x/b0/d2/92/b0d29243e9fe9912bfef410fe70ac721.jpg",
    "https://i.pinimg.com/564x/c0/ce/f3/c0cef350a886df475803bd2c8ab5fd87.jpg",
    "https://i.pinimg.com/564x/ff/70/a1/ff70a19a076fff3f041fef54f2885d1b.jpg",
    "https://i.pinimg.com/564x/3d/ae/31/3dae312bae859b99df9e74b6603f7dca.jpg",
    "https://i.pinimg.com/564x/d6/3c/c7/d63cc70621a83c10e43029794347bf66.jpg",
    "https://i.pinimg.com/564x/f9/dd/e5/f9dde590135f05b14710d7e870fc3da0.jpg",
    "https://i.pinimg.com/564x/35/14/30/351430cfd3468782a790b9fbe412df26.jpg",
    "https://i.pinimg.com/564x/94/06/54/940654281a28eab3d9cb3c5001c42a48.jpg",
    "https://i.pinimg.com/564x/1d/b0/65/1db065a6a0833ee53eac50605d473a99.jpg",
    "https://i.pinimg.com/564x/d1/80/a6/d180a6215ffcb46d940bc0278260ec2a.jpg",
    "https://i.pinimg.com/564x/91/1e/02/911e028fd62ea303473617615fc96678.jpg",
    "https://i.pinimg.com/564x/3e/5b/5c/3e5b5cbf455cc535c1579099f71c03d1.jpg",
    "https://i.pinimg.com/564x/2e/86/b4/2e86b4793b1a4b2ce0410df21bdd50bd.jpg",
    "https://i.pinimg.com/564x/0a/5a/e6/0a5ae675319552988a89d4e49fe52903.jpg",
    "https://i.pinimg.com/564x/45/ad/bd/45adbd22c68a1ac7f22b91c85c437d07.jpg",
    "https://i.pinimg.com/564x/69/47/19/6947190a3177b7b916d9024e1acfb980.jpg",
    "https://i.pinimg.com/564x/4d/81/12/4d811237d52f2d1e64b06ffacf5a03cc.jpg",
    "https://i.pinimg.com/564x/45/19/6c/45196c9ae1af3df23ae1f787a893cb20.jpg",
    "https://i.pinimg.com/564x/05/b1/6a/05b16a698003962e3663e8e5467ddb01.jpg",
    "https://i.pinimg.com/564x/a5/1e/68/a51e68c953166aeade00e054d4ad9ecd.jpg",
    "https://i.pinimg.com/564x/6b/ef/98/6bef981bee10b4889408c668c8ae7224.jpg",
    "https://i.pinimg.com/564x/c2/0c/65/c20c653b02410c4decca3c20efdecc08.jpg",
    "https://i.pinimg.com/564x/6d/3b/98/6d3b98a079be8103d074ab4e9a8a6924.jpg",
    "https://i.pinimg.com/564x/e7/22/12/e72212bc6d45bd126df7c5e13add364d.jpg",
    "https://i.pinimg.com/564x/e7/22/12/e72212bc6d45bd126df7c5e13add364d.jpg",
    "https://i.pinimg.com/564x/2d/07/d3/2d07d3898f0344fc6ac3b2d4fe40c3c0.jpg",
    "https://i.pinimg.com/564x/2d/07/d3/2d07d3898f0344fc6ac3b2d4fe40c3c0.jpg",
    "https://i.pinimg.com/564x/91/c1/83/91c1832ce669da05a0b6387014c177aa.jpg",
    "https://i.pinimg.com/736x/2c/85/8d/2c858d35443f6e68be12fd7a0f73044e.jpg",
    "https://i.pinimg.com/564x/40/e1/23/40e12305d55151dccb874c22a5e3978c.jpg",
    "https://i.pinimg.com/564x/ae/b3/ce/aeb3cee0eaa7d18513e339fa0b1bacc0.jpg",
    "https://i.pinimg.com/564x/6c/c1/8b/6cc18b0843b1638ba7acc177b2491882.jpg",
    "https://i.pinimg.com/564x/16/15/74/16157450b819dbaa518c282d278d6ab1.jpg",
  ];
  // String backgroundImage =
  //     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSL_-KhSRIaKJ9oqKZov0aQPSeOdOmcm7JF5TFk0rwAKDIxDxCPJ1kiJKNYxdEcyWL-HF8&usqp=CAU"
  //     "https://c4.wallpaperflare.com/wallpaper/879/754/332/blurred-colorful-vertical-portrait-display-wallpaper-preview.jpg";

  String fonts = AppFonts.dancingScript.name;

  GlobalKey widgetKey = GlobalKey();

  Future<File> getFileFromWidget() async {
    RenderRepaintBoundary boundary =
        widgetKey.currentContext!.findRenderObject() as RenderRepaintBoundary;
    ui.Image image = await boundary.toImage(
      pixelRatio: 2,
    );
    ByteData? data = await image.toByteData(
      format: ui.ImageByteFormat.png,
    );
    Uint8List list = data!.buffer.asUint8List();

    Directory directory = await getTemporaryDirectory();
    File file = await File(
            "${directory.path}/QA${DateTime.now().millisecondsSinceEpoch}.png")
        .create();
    file.writeAsBytesSync(list);

    return file;
  }

  bool image = false;

  String? selectedimage;
  @override
  Widget build(BuildContext context) {
    TextScaler textScaler = MediaQuery.textScalerOf(context);
    Size size = MediaQuery.of(context).size;

    double height = size.height;
    double width = size.width;

    Festival slogan = ModalRoute.of(context)!.settings.arguments as Festival;
    return PopScope(
      canPop: false,
      onPopInvoked: (val) {
        if (val) {
          return;
        }
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text("Alert !!"),
            content: const Text("Are you sure to exit?"),
            actions: [
              ElevatedButton(
                onPressed: () {
                  // _canPop = true;
                  Navigator.pop(context);
                  Navigator.pop(context);
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
      // onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffcbbfb2),
          title: const Text("Detail Page"),
        ),
        body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/category/light.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Expanded(
                child: RepaintBoundary(
                  key: widgetKey,
                  child: Container(
                    margin: const EdgeInsets.all(16),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(selectedimage ?? bgImages[0]),
                        fit: BoxFit.cover,
                      ),
                      border: Border.all(),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SingleChildScrollView(
                          child: SelectableText(
                            slogan.slogan,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontFamily: fonts,
                            ),
                          ),
                        ),
                        Text("- ${slogan.name}"),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                //Column
                child: Column(
                  children: [
                    const Text(
                      "Background image",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    //Row
                    SizedBox(
                      height: 50,
                      child:
                          ListView(scrollDirection: Axis.horizontal, children: [
                        ...bgImages
                            .map(
                              (e) => GestureDetector(
                                onTap: () {
                                  selectedimage = e;

                                  print("-----------------------");
                                  print("-----------------------");
                                  print(selectedimage);
                                  print(selectedimage);
                                  print("-----------------------");
                                  print("-----------------------");

                                  setState(() {});
                                },
                                child: Container(
                                  height: height * 0.50,
                                  width: width * 0.30,
                                  margin: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    image: DecorationImage(
                                      image: NetworkImage(e),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                            )
                            .toList(),
                      ]),
                    ),

                    const Padding(
                      padding: EdgeInsets.all(10),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: AppFonts.values
                          .map(
                            (e) => TextButton(
                              onPressed: () {
                                fonts = e.name;
                                setState(() {});
                              },
                              child: CircleAvatar(
                                radius: 20,
                                backgroundColor: Colors.black54,
                                child: Text(
                                  "Abc",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: e.name,
                                  ),
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ElevatedButton.icon(
                            onPressed: () {
                              Clipboard.setData(
                                ClipboardData(
                                  text: "${slogan.slogan}\n\n-${slogan.name}",
                                ),
                              ).then((value) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content:
                                        Text("festival copied to clipboard !!"),
                                  ),
                                );
                              });
                            },
                            icon: const Icon(Icons.copy),
                            label: const Text("Copy to clipboard"),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          ElevatedButton.icon(
                            onPressed: () async {
                              ImageGallerySaver.saveFile(
                                (await getFileFromWidget()).path,
                                isReturnPathOfIOS: true,
                              ).then(
                                (value) =>
                                    ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text("Saved to gallery !!"),
                                  ),
                                ),
                              );
                            },
                            icon: const Icon(Icons.save_alt),
                            label: const Text("Save to gallery"),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          ElevatedButton.icon(
                            onPressed: () async {
                              ShareExtend.share(
                                (await getFileFromWidget()).path,
                                "image",
                              );
                            },
                            icon: const Icon(Icons.share),
                            label: const Text("Share"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
