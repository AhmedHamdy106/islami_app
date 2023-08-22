import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/moduls/quran/verses_widget.dart';
import 'package:islami_app/moduls/quran/widgets/suraName_widget.dart';
import 'package:provider/provider.dart';

import '../../settings_provider.dart';

class SuraDetailsView extends StatefulWidget {
  static const String routeName = "sura_details";
  SuraDetailsView({super.key});

  @override
  State<SuraDetailsView> createState() => _SuraDetailsViewState();
}

class _SuraDetailsViewState extends State<SuraDetailsView> {
  String versContent = "";
  List<String> versList = [];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var provider = Provider.of<SettingProvider>(context);
    var args = ModalRoute.of(context)!.settings.arguments as SuraDetails;
    if (versContent.isEmpty) readFile(args.suraIndex);

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(!provider.isDark()
              ? "assets/images/background_light.png"
              : "assets/images/background_dark.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text("Islami"),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          margin: EdgeInsets.only(
            top: 15,
            bottom: 80,
            left: 30,
            right: 30,
          ),
          padding: EdgeInsets.only(top: 50),
          decoration: BoxDecoration(
            color: !provider.isDark()
                ? Color(0xFFF8F8F8).withOpacity(0.8)
                : Color(0xFF141A2E).withOpacity(0.8),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("سورة ${args.suraName}",
                      style: theme.textTheme.bodyLarge!.copyWith(
                        color: !provider.isDark()
                            ? Colors.black
                            : const Color(0xFFFACC1D),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.play_circle,
                      color: !provider.isDark()
                          ? Colors.black
                          : Color(0xFFFACC1D)),
                ],
              ),
              Divider(
                color: !provider.isDark() ? Colors.black : theme.canvasColor,
                thickness: 1.5,
                indent: 40,
                endIndent: 40,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) =>
                      VirsesWidget(versList[index], index + 1),
                  itemCount: versList.length,
                ),
              ),
              // Text(
              //   versContent,
              //   style: TextStyle(
              //     fontSize: 20,
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }

  readFile(int index) async {
    String text = await rootBundle.loadString("assets/files/${index + 1}.txt");
    versContent = text;
    versList = versContent.trim().split("\n");
    setState(() {});
  }
}
