import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:todoapp/service/notification_service.dart';
import 'package:todoapp/service/theme_service.dart';
import 'package:todoapp/ui/theme.dart';
import 'package:todoapp/ui/widgets/button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var notifyHelper;

  @override
  void initState() {
    super.initState();
    notifyHelper = NotifyHelper();
    notifyHelper.initializeNotification();
    notifyHelper.requestIOSPermissions();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      // backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   Text(DateFormat.yMMMMd().format(DateTime.now()),
                   style: subHeadingStyle,),
                   Text("Today")
                ],),
              ),
              MyButton(label: "+ Add Task", onTap: () => null)
            ],),
          )
        ],
      ),
    );
  }

  _appBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: context.theme.backgroundColor,
      leading: GestureDetector(
        onTap: () {
          ThemeService().switchTheme();
          notifyHelper.displayNotification(
              title: "theme changed",
              body: Get.isDarkMode
                  ? "Activated Light Theme"
                  : "Activated Dark Theme");

          notifyHelper.scheduledNotification();
        },
        child: Icon(
          Get.isDarkMode ?  Icons.wb_sunny_outlined : Icons.nightlight_round,
          size: 20,
          color: Get.isDarkMode ?  Colors.white : Colors.black,
        ),
      ),
      actions: [
        /*
        CircleAvatar(
          backgroundImage: AssetImage(
            "images/profile.png"
          ),
        ),
        */
        Icon(
          Icons.person,
          size: 20,
        ),
        SizedBox(width: 20),
      ],
    );
  }
}
