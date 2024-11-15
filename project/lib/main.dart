import 'dart:developer';

import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project/login.dart';
import 'analyticsScreen.dart';
import 'navvBar.dart';
import 'postScreen.dart';
import 'profilePage.dart';
import 'save_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'homepage.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyA1TEVTe8-fRMEmArLvaP3vHs5lp7adROM", 
      appId: "1:656947336984:android:497f2402f8c674549eb06d", 
      messagingSenderId: "656947336984", 
      projectId: "recipeapp-cdc9c"
    )
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RecipeChat',
      home: LoginPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _pageController = PageController(initialPage: 0);

  final _controller = NotchBottomBarController(index: 0);

  int maxCount = 5;
  int currentIndex = 0;
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  List<String> names = ["Home", "Favorite", "Post", "Challenges", "Profile"];

  /// widget list
  final List<Widget> bottomBarPages = [
    const HomeScreen(),
    const SavedRecipes(),
    const PostScreen(),
    const AnalyticsScreen(),
    const Page5(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: currentIndex == 0
          ? null
          : currentIndex == 1
              ? null
              : currentIndex == 3
                  ? null
                  : currentIndex == 2
                      ? null
                      : AppBar(
                          title: Text(
                            names[currentIndex],
                            style: const TextStyle(fontWeight: FontWeight.w800),
                          ),
                          centerTitle: true,
                          actions: [
                            Builder(
                              builder: (context) => IconButton(
                                icon: SvgPicture.asset(
                                  "assets/three-dots-svgrepo-com.svg",
                                  width: 22,
                                ),
                                onPressed: () {
                                  Scaffold.of(context)
                                      .openEndDrawer(); // Opens the end drawer
                                },
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            )
                          ],
                        ),
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
            bottomBarPages.length, (index) => bottomBarPages[index]),
      ),
      extendBody: true,
      bottomNavigationBar: (bottomBarPages.length <= maxCount)
          ? AnimatedNotchBottomBar(
              notchBottomBarController: _controller,
              // color: const Color.fromARGB(231, 112, 70, 249),4

              color: const Color.fromRGBO(27, 94, 32, 1),
              showLabel: false,
              notchColor: const Color.fromRGBO(27, 94, 32, 1),
              kBottomRadius: 2,
              kIconSize: 24,
              removeMargins: false,
              bottomBarWidth: 500,
              durationInMilliSeconds: 300,
              bottomBarItems: const[
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.home_filled,
                    color: Colors.grey,
                  ),
                  activeItem: Icon(
                    Icons.home_outlined,
                    color: Colors.white,
                  ),
                  itemLabel: 'Page 1',
                ),
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.star,
                    color: Colors.grey,
                  ),
                  activeItem: Icon(
                    Icons.star_border,
                    color: Colors.white,
                  ),
                  itemLabel: 'Page 2',
                ),

                ///svg example
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.add_box_rounded,
                    color: Colors.grey,
                  ),
                  // inActiveItem: SvgPicture.asset(
                  //   'assets/icons8-search.svg',
                  //   color: Colors.grey,
                  // ),
                  activeItem: Icon(
                    Icons.add,
                    color: Colors.white,
                    weight: 800,
                  ),
                  // activeItem: SvgPicture.asset(
                  //   'assets/icons8-search.svg',
                  //   color: Colors.white,
                  // ),
                  itemLabel: 'Page 3',
                ),
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.leaderboard,
                    color: Colors.grey,
                  ),
                  activeItem: Icon(
                    Icons.leaderboard_outlined,
                    color: Colors.white,
                  ),
                  itemLabel: 'Page 4',
                ),
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                  activeItem: Icon(
                    Icons.person_2_outlined,
                    color: Colors.white,
                  ),
                  itemLabel: 'Page 5',
                ),
              ],
              onTap: (index) {
                log('current selected index $index');

                setState(() {
                  currentIndex = index;
                });
                _pageController.jumpToPage(index);
              },
            )
          : null,
      endDrawer: currentIndex == 4 ? NavBar() : null,
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(child: const Center(child: Text('Page 1')));
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(child: const Center(child: Text('Page 2')));
  }
}

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(child: const Center(child: Text('Page 3')));
  }
}

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(child: const Center(child: Text('Page 4')));
  }
}
