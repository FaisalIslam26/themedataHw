import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Themedata extends StatefulWidget {
  const Themedata({Key? key}) : super(key: key);

  @override
  State<Themedata> createState() => _ThemedataState();
}

class _ThemedataState extends State<Themedata> {
  bool isdark = false;
  ThemeMode thm = ThemeMode.light;
  Color bcolor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: TextTheme(
            headline1: TextStyle(
              fontFamily: "Lobster",
              fontSize: 40,
              color: Colors.black,
              fontWeight: FontWeight.w700,
            ),
            subtitle1: TextStyle(
              fontFamily: "Lobster",
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        darkTheme: ThemeData(
          iconTheme: IconThemeData(color: Colors.white.withOpacity(0.5)),
          brightness: Brightness.dark,
          textTheme: TextTheme(
            headline1: TextStyle(
              fontFamily: "Lobster",
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
            subtitle1: TextStyle(
              fontFamily: "Lobster",
              fontSize: 15,
              color: Colors.white.withOpacity(0.5),
            ),
          ),
        ),
        themeMode: thm,
        home: Builder(builder: (context) {
          return Scaffold(
            body: Material(
              color: bcolor,
              child: Padding(
                padding: const EdgeInsets.only(top: 70, left: 7, right: 8),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 5,
                          ),
                          child: Text(
                            "Account settings",
                            style: Theme.of(context).textTheme.headline1,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: Container(
                            height: 60,
                            width: 60,
                            child: InkWell(
                              customBorder: CircleBorder(),
                              radius: 50,
                              onTap: () {
                                setState(() {
                                  if (isdark) {
                                    isdark = false;
                                    thm = ThemeMode.light;
                                    bcolor = Colors.white;
                                  } else {
                                    isdark = true;
                                    thm = ThemeMode.dark;
                                    bcolor = Colors.black;
                                  }
                                });
                              },
                              child: Icon(
                                isdark
                                    ? Icons.nightlight_round_outlined
                                    : IconData(0xee81, fontFamily: 'icofont'),
                                size: 40,
                                color: isdark ? Colors.white : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 15, right: 15, top: 5, bottom: 25),
                        child: Text(
                            "Update your settings like profile edit, change your password etc",
                            style:
                                Theme.of(context).textTheme.headline2!.copyWith(
                                      fontSize: 15,
                                    )),
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(Icons.person),
                      title: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Edit Profile"),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Change your account information",
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ),
                      trailing: Icon(Icons.keyboard_arrow_right_rounded),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(Icons.lock),
                      title: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Change your Password",
                        ),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Change your Password",
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ),
                      trailing: Icon(Icons.keyboard_arrow_right_rounded),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(Icons.lock),
                      title: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Share to Friends "),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Get \$5 for referring friends",
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ),
                      trailing: Icon(Icons.keyboard_arrow_right_rounded),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(Icons.power_settings_new_outlined),
                      title: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Logout"),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "logout and try different login ",
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ),
                      trailing: Icon(Icons.keyboard_arrow_right_rounded),
                    ),
                  ],
                ),
              ),
            ),
          );
        }));
  }
}
