import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/style/app_theme.dart';
import 'hadeth_view.dart';

class HadethDetailsVeiw extends StatefulWidget {
  static const String routeName = "hadeth_view"; // Corrected routeName

  HadethDetailsVeiw({Key? key}) : super(key: key);

  @override
  State<HadethDetailsVeiw> createState() => _HadethDetailsVeiwState();
}

class _HadethDetailsVeiwState extends State<HadethDetailsVeiw> {
  String versContent = "";
  List<String> versList = [];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var args = ModalRoute.of(context)!.settings.arguments as HadethContent;

    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppTheme.themeMode != ThemeMode.dark
                  ? "assets/images/background_light.png"
                  : "assets/images/background_dark.png"),
              fit: BoxFit.fill),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(
              "Islami",
              style: theme.textTheme.titleLarge,
            ),
          ),
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            margin: EdgeInsets.only(
              top: 15,
              bottom: 80,
              right: 20,
              left: 20,
            ),
            padding: EdgeInsets.only(top: 50),
            decoration: BoxDecoration(
                color: Color(0xFF141A2E).withOpacity(0.8),
                borderRadius: BorderRadius.circular(25)),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      args.title,
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Divider(
                        thickness: 1.5,
                        color: theme.canvasColor,
                      ),
                    ),
                    Text(
                      args.content,
                      style: theme.textTheme.bodyMedium!.copyWith(
                        color: const Color(0xFFFACC1D),
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }

  readFile(int index) async {
    String text = await rootBundle
        .loadString("assets/files/${index}.txt"); // Corrected path
    versContent = text;
    versList = versContent.split("");
    setState(() {});
  }
}
