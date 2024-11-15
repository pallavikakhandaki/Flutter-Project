import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:project/navBarSetting.dart';
import 'package:project/setting.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color.fromARGB(255, 58, 87, 57),
        padding: const EdgeInsets.only(top: 50, bottom: 30, left: 15, right: 15),
        child: Column(
          children: [
            Container(
              height: 85,
              width: 280,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 29, 63, 34),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color:
                        const Color.fromARGB(255, 8, 130, 79).withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 8,
                    offset: const Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
              padding: const EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 188, 188, 188),
                            width: 2),
                        borderRadius: BorderRadius.circular(50)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        height: 45,
                        "assets/profileimg.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 170,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Nadia Santini",
                          style: TextStyle(
                              color: Color.fromARGB(255, 193, 192, 192),
                              fontWeight: FontWeight.w800,
                              fontSize: 16),
                        ),
                        Text(
                          "Chef",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                              fontSize: 12),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 15),
                      height: 380,
                      width: 280,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Brows Menu's",
                            style: TextStyle(
                                color: Color.fromARGB(255, 210, 209, 209),
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 310,
                            width: 280,
                            // color: Colors.amber,
                            child: Column(
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 15),
                                  width: 250,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 36, 86, 53),
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color.fromARGB(255, 8, 130, 79)
                                            .withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 4,
                                        offset:
                                            const Offset(0, 2), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        "assets/profile-svgrepo-com.svg",
                                        color: const Color.fromARGB(255, 211, 211, 211),
                                      ),
                                      // Icon(
                                      //   Icons.settings,
                                      //   color: Color.fromARGB(255, 211, 211, 211),
                                      //   size: 30,
                                      // ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Text(
                                        "Account & Profile",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 211, 211, 211),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context, 
                                      MaterialPageRoute(
                                        builder: (context) => NotificationSettingsPage(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 15),
                                    width: 250,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(255, 36, 86, 53),
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                          color: const Color.fromARGB(255, 8, 130, 79)
                                              .withOpacity(0.5),
                                          spreadRadius: 2,
                                          blurRadius: 4,
                                          offset:
                                              const Offset(0, 2), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: const Row(
                                      children: [
                                        Icon(
                                          Icons.notifications,
                                          color: Color.fromARGB(255, 211, 211, 211),
                                          size: 30,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "Notifications",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 211, 211, 211),
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context, 
                                      MaterialPageRoute(
                                        builder: (context) => TermsAndConditionsScreen(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 15),
                                    width: 250,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(255, 36, 86, 53),
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                          color: const Color.fromARGB(255, 8, 130, 79)
                                              .withOpacity(0.5),
                                          spreadRadius: 2,
                                          blurRadius: 4,
                                          offset:
                                              const Offset(0, 2), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          "assets/signing-the-contract-svgrepo-com.svg",
                                          height: 26,
                                          color: const Color.fromARGB(255, 211, 211, 211),
                                        ),
                                        // Icon(
                                        //   Icons.settings,
                                        //   color: Color.fromARGB(255, 211, 211, 211),
                                        //   size: 30,
                                        // ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Text(
                                          "Terms & Conditions",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 211, 211, 211),
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context, 
                                      MaterialPageRoute(
                                        builder: (context) => HelpAndSupportScreen(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 15),
                                    width: 250,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(255, 36, 86, 53),
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                          color: const Color.fromARGB(255, 8, 130, 79)
                                              .withOpacity(0.5),
                                          spreadRadius: 2,
                                          blurRadius: 4,
                                          offset:
                                              const Offset(0, 2), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          "assets/support-svgrepo-com.svg",
                                          height: 28,
                                          color: const Color.fromARGB(255, 211, 211, 211),
                                        ),
                                        // Icon(
                                        //   Icons.settings,
                                        //   color: Color.fromARGB(255, 211, 211, 211),
                                        //   size: 30,
                                        // ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Text(
                                          "Help & Support",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 211, 211, 211),
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context, 
                                      MaterialPageRoute(
                                        builder: (context) => SettingsScreen(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 15),
                                    width: 250,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(255, 36, 86, 53),
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                          color: const Color.fromARGB(255, 8, 130, 79)
                                              .withOpacity(0.5),
                                          spreadRadius: 2,
                                          blurRadius: 4,
                                          offset:
                                              const Offset(0, 2), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: const Row(
                                      children: [
                                        Icon(
                                          Icons.settings,
                                          color: Color.fromARGB(255, 211, 211, 211),
                                          size: 30,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "Settings",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 211, 211, 211),
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const Divider(
              color: Color.fromARGB(255, 149, 148, 148),
              height: 20,
              thickness: 1,
              indent: 5,
              endIndent: 5,
            ),
            Container(
              padding: const EdgeInsets.only(top: 15),
              width: 280,
              height: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Your Activities",
                    style: TextStyle(
                        color: Color.fromARGB(255, 210, 209, 209),
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 280,
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          width: 250,
                          height: 50,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 36, 86, 53),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: const Color.fromARGB(255, 8, 130, 79)
                                    .withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 4,
                                offset:
                                    const Offset(0, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.favorite,
                                color: Color.fromARGB(255, 211, 211, 211),
                                size: 30,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Likes",
                                style: TextStyle(
                                    color: Color.fromARGB(
                                        255, 211, 211, 211),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          width: 250,
                          height: 50,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 36, 86, 53),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: const Color.fromARGB(255, 8, 130, 79)
                                    .withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 4,
                                offset:
                                    const Offset(0, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.message,
                                color: Color.fromARGB(255, 211, 211, 211),
                                size: 30,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Comments",
                                style: TextStyle(
                                    color: Color.fromARGB(
                                        255, 211, 211, 211),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.only(left: 15),
              height: 90,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          "assets/moon-stars-svgrepo-com.svg",
                          color: const Color.fromARGB(255, 211, 211, 211),
                          width: 30,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "Dark Mode",
                          style: TextStyle(
                              color: Color.fromARGB(255, 211, 211, 211),
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        FlutterSwitch(
                          width: 58.0,
                          height: 28.0,
                          valueFontSize: 13.0,
                          toggleSize: 20.0,
                          value: status,
                          borderRadius: 30.0,
                          padding: 4.0,
                          showOnOff: true,
                          onToggle: (val) {
                            setState(() {
                              status = val;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    color: Color.fromARGB(255, 149, 148, 148),
                    height: 20,
                    thickness: 1,
                    indent: 5,
                    endIndent: 5,
                  ),
                  Container(
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          "assets/logout-svgrepo-com.svg",
                          color: const Color.fromARGB(255, 211, 211, 211),
                          width: 30,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "Logout",
                          style: TextStyle(
                              color: Color.fromARGB(255, 211, 211, 211),
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
