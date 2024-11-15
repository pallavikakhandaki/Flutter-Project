import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Page5 extends StatelessWidget {
  const Page5({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        // color: Colors.blueAccent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 90,
                    width: 90,
                    child: Container(
                      height: 80,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                          // color: Colors.red,
                          borderRadius: BorderRadius.circular(75)),
                      width: 80,
                      child: SizedBox(
                        height: 50,
                        child: Image.asset(
                          "assets/profileimg.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 150,
                    width: 232,
                    // color: const Color.fromARGB(255, 154, 133, 69),
                    child: Center(
                      child: SizedBox(
                        // color: Colors.red,
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              child: const Column(
                                children: [
                                  Text(
                                    "Recipes",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 14,
                                        color: Colors.grey),
                                  ),
                                  Text(
                                    "4",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 18),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: const Column(
                                children: [
                                  Text(
                                    "Followers",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 14,
                                        color: Colors.grey),
                                  ),
                                  Text(
                                    "2.5M",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 18),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: const Column(
                                children: [
                                  Text(
                                    "Following",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 14,
                                        color: Colors.grey),
                                  ),
                                  Text(
                                    "259",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 18),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            // SizedBox(
            //   height: 5,
            // ),
            const Text(
              "Nadia Santini",
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.w700),
            ),
            const Text(
              "Chef",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Prvate Chef",
              style: TextStyle(color: Color.fromARGB(255, 69, 69, 69)),
            ),
            const Text(
              "Passionate about food and life",
              style: TextStyle(color: Color.fromARGB(255, 73, 73, 73)),
            ),
            const Text(
              "More...",
              style: TextStyle(
                  color: Color.fromARGB(255, 139, 109, 246),
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 10,
            ),
            // Container(
            //   height: 35,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Container(
            //         width: 115,
            //         decoration: BoxDecoration(
            //             color: const Color.fromARGB(231, 184, 13, 236),
            //             borderRadius: BorderRadius.circular(10)),
            //         child: const Center(
            //           child: Text(
            //             "Recipe",
            //             style: TextStyle(
            //                 color: Colors.white, fontWeight: FontWeight.w700),
            //           ),
            //         ),
            //       ),
            //       Container(
            //         width: 115,
            //         decoration: BoxDecoration(
            //             // color: const Color.fromARGB(255, 4, 150, 55),
            //             borderRadius: BorderRadius.circular(10)),
            //         child: const Center(
            //           child: Text(
            //             "Videos",
            //             style: TextStyle(
            //                 color: Color.fromARGB(231, 184, 13, 236),
            //                 fontWeight: FontWeight.w700),
            //           ),
            //         ),
            //       ),
            //       Container(
            //         width: 115,
            //         decoration: BoxDecoration(
            //             // color: const Color.fromARGB(255, 4, 150, 55),
            //             borderRadius: BorderRadius.circular(10)),
            //         child: const Center(
            //           child: Text(
            //             "Tags",
            //             style: TextStyle(
            //                 color: Color.fromARGB(231, 184, 13, 236),
            //                 fontWeight: FontWeight.w700),
            //           ),
            //         ),
            //       )
            //     ],
            //   ),
            // ),
            const Tagsandmany(),
            // SizedBox(
            //   height: 10,
            // ),
            // Container(
            //   height: 443,
            //   // color: Colors.red,
            //   child: ListView(
            //     physics: BouncingScrollPhysics(),
            //     children: [
            //       Container(
            //         height: 150,
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(20),
            //           color: Colors.blueAccent,
            //         ),
            //       ),
            //       SizedBox(
            //         height: 10,
            //       ),
            //       Container(
            //         height: 150,
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(20),
            //           color: Colors.blueAccent,
            //         ),
            //       ),
            //       SizedBox(
            //         height: 10,
            //       ),
            //       Container(
            //         height: 150,
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(20),
            //           color: Colors.blueAccent,
            //         ),
            //       ),
            //       SizedBox(
            //         height: 10,
            //       ),
            //       Container(
            //         height: 150,
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(20),
            //           color: Colors.blueAccent,
            //         ),
            //       ),
            //       SizedBox(
            //         height: 10,
            //       ),
            //     ],
            //   ),
            // )
          ],
        ));
  }
}

class Tagsandmany extends StatefulWidget {
  const Tagsandmany({super.key});

  @override
  State createState() => _Tabcontainer();
}

class _Tabcontainer extends State {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 35,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = 0;
                  });
                },
                child: Container(
                  width: 115,
                  decoration: BoxDecoration(
                      color: selectedIndex == 0
                          ? const Color.fromRGBO(27, 94, 32, 1)
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      "Recipe",
                      style: TextStyle(
                          color: selectedIndex == 0
                              ? Colors.white
                              : const Color.fromRGBO(27, 94, 32, 1),
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = 1;
                  });
                },
                child: Container(
                  width: 115,
                  decoration: BoxDecoration(
                      color: selectedIndex == 1
                          ? const Color.fromRGBO(27, 94, 32, 1)
                          : Colors.transparent,
                      // color: const Color.fromARGB(255, 4, 150, 55),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      "Videos",
                      style: TextStyle(
                          color: selectedIndex == 1
                              ? Colors.white
                              : const Color.fromRGBO(27, 94, 32, 1),
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = 2;
                  });
                },
                child: Container(
                  width: 115,
                  decoration: BoxDecoration(
                      color: selectedIndex == 2
                          ? const Color.fromRGBO(27, 94, 32, 1)
                          : Colors.transparent,
                      // color: const Color.fromARGB(255, 4, 150, 55),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      "Tags",
                      style: TextStyle(
                          color: selectedIndex == 2
                              ? Colors.white
                              : const Color.fromRGBO(27, 94, 32, 1),
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        selectedIndex == 0
            ? SizedBox(
                height: 443,
                // color: Colors.red,
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: [
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blueAccent,
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Stack(
                        children: [
                          Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_uFjiEsK8KyOL79Ei3cp31KVVYuB15EJa7A&s",
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: double.infinity,
                          ),
                          Positioned(
                            bottom: 10,
                            left: 10,
                            child: Text(
                              "Traditional Spere",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  Shadow(
                                    blurRadius: 6.0,
                                    color: Colors.black.withOpacity(0.6),
                                    offset: const Offset(2, 2),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Positioned(
                              bottom: 10,
                              right: 10,
                              child: Icon(
                                Icons.bookmark,
                                color: Colors.white,
                                size: 24,
                                weight: 800,
                              )),
                          Positioned(
                              top: 10,
                              right: 10,
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 2),
                                height: 18,
                                width: 45,
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 244, 204, 201),
                                    borderRadius: BorderRadius.circular(8)),
                                child: const Center(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: 14,
                                      ),
                                      Text(
                                        "4.4",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                ),
                              )),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blueAccent,
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Stack(
                        children: [
                          Image.network(
                            "https://static.wixstatic.com/media/fdf34f_640171145b3a4e6cb40469132d13565e~mv2.png/v1/fill/w_568,h_380,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/fdf34f_640171145b3a4e6cb40469132d13565e~mv2.png",
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: double.infinity,
                          ),
                          Positioned(
                            bottom: 10,
                            left: 10,
                            child: Text(
                              "Chicken Rajdhani",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  Shadow(
                                    blurRadius: 6.0,
                                    color: Colors.black.withOpacity(0.6),
                                    offset: const Offset(2, 2),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Positioned(
                              bottom: 10,
                              right: 10,
                              child: Icon(
                                Icons.bookmark,
                                color: Colors.white,
                                size: 24,
                                weight: 800,
                              )),
                          Positioned(
                              top: 10,
                              right: 10,
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 2),
                                height: 18,
                                width: 45,
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 244, 204, 201),
                                    borderRadius: BorderRadius.circular(8)),
                                child: const Center(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: 14,
                                      ),
                                      Text(
                                        "4.4",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                ),
                              )),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blueAccent,
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Stack(
                        children: [
                          Image.network(
                            "https://substackcdn.com/image/fetch/f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fbucketeer-e05bbc84-baa3-437e-9518-adb32be77984.s3.amazonaws.com%2Fpublic%2Fimages%2Fc1035be9-8dbf-46a7-ae24-2fd6f270208e_480x640.jpeg",
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: double.infinity,
                          ),
                          Positioned(
                            bottom: 10,
                            left: 10,
                            child: Text(
                              "Shahi Panner Masala",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  Shadow(
                                    blurRadius: 6.0,
                                    color: Colors.black.withOpacity(0.6),
                                    offset: const Offset(2, 2),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Positioned(
                              bottom: 10,
                              right: 10,
                              child: Icon(
                                Icons.bookmark,
                                color: Colors.white,
                                size: 24,
                                weight: 800,
                              )),
                          Positioned(
                              top: 10,
                              right: 10,
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 2),
                                height: 18,
                                width: 45,
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 244, 204, 201),
                                    borderRadius: BorderRadius.circular(8)),
                                child: const Center(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: 14,
                                      ),
                                      Text(
                                        "4.4",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                ),
                              )),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blueAccent,
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: Stack(
                        children: [
                          Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQA_0BgtAQ5NwqfNT1nMLe4DTkcEdMwk62SA&s",
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: double.infinity,
                          ),
                          Positioned(
                            bottom: 10,
                            left: 10,
                            child: Text(
                              "Chowmin Pasta",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  Shadow(
                                    blurRadius: 6.0,
                                    color: Colors.black.withOpacity(0.6),
                                    offset: const Offset(2, 2),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Positioned(
                              bottom: 10,
                              right: 10,
                              child: Icon(
                                Icons.bookmark,
                                color: Colors.white,
                                size: 24,
                                weight: 800,
                              )),
                          Positioned(
                              top: 10,
                              right: 10,
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 2),
                                height: 18,
                                width: 45,
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 244, 204, 201),
                                    borderRadius: BorderRadius.circular(8)),
                                child: const Center(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: 14,
                                      ),
                                      Text(
                                        "4.4",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                ),
                              )),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              )
            : selectedIndex == 1
                ? SizedBox(
                    height: 443,
                    // color: Colors.red,
                    child: ListView(
                      physics: const BouncingScrollPhysics(),
                      children: [
                        Container(
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            // color: const Color.fromARGB(255, 38, 218, 50),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: 185,
                                height: 210,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Stack(
                                  children: [
                                    SizedBox.expand(
                                      child: Image.network(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJRP5L1FODxAabZ1_W3gZou42CFUv-riEKvA&s",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 10,
                                      left: 10,
                                      child: Row(
                                        children: [
                                          SvgPicture.asset(
                                            "assets/clock-svgrepo-com (1).svg",
                                            width: 18,
                                            color: Colors.white,
                                          ),
                                          const SizedBox(width: 5),
                                          const Text(
                                            "12 min",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w800),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Positioned(
                                      top: 10,
                                      right: 10,
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.favorite,
                                            size: 18,
                                            color: Colors.white,
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            "12.5K",
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 185,
                                height: 210,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Stack(
                                  children: [
                                    SizedBox.expand(
                                      child: Image.network(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkyWx5iUzIVk_6gMGhI48aqPC0U-BJz2NmWw&s",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 10,
                                      left: 10,
                                      child: Row(
                                        children: [
                                          SvgPicture.asset(
                                            "assets/clock-svgrepo-com (1).svg",
                                            width: 18,
                                            color: Colors.white,
                                          ),
                                          const SizedBox(width: 5),
                                          const Text(
                                            "12 min",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w800),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Positioned(
                                      top: 10,
                                      right: 10,
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.favorite,
                                            size: 18,
                                            color: Colors.white,
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            "12.5K",
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                            ),
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
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            // color: const Color.fromARGB(255, 38, 218, 50),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: 185,
                                height: 210,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Stack(
                                  children: [
                                    SizedBox.expand(
                                      child: Image.network(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQG_WsPo4jbURopBDGkEv1BCNV1r_0eDwzOnQ&s",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 10,
                                      left: 10,
                                      child: Row(
                                        children: [
                                          SvgPicture.asset(
                                            "assets/clock-svgrepo-com (1).svg",
                                            width: 18,
                                            color: Colors.white,
                                          ),
                                          const SizedBox(width: 5),
                                          const Text(
                                            "12 min",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w800),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Positioned(
                                      top: 10,
                                      right: 10,
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.favorite,
                                            size: 18,
                                            color: Colors.white,
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            "12.5K",
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 185,
                                height: 210,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Stack(
                                  children: [
                                    SizedBox.expand(
                                      child: Image.network(
                                        "https://lemonsandzest.com/wp-content/uploads/2020/05/Crockpot-Chuck-Roast-2.4.jpg",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 10,
                                      left: 10,
                                      child: Row(
                                        children: [
                                          SvgPicture.asset(
                                            "assets/clock-svgrepo-com (1).svg",
                                            width: 18,
                                            color: Colors.white,
                                          ),
                                          const SizedBox(width: 5),
                                          const Text(
                                            "12 min",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w800),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Positioned(
                                      top: 10,
                                      right: 10,
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.favorite,
                                            size: 18,
                                            color: Colors.white,
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            "12.5K",
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                            ),
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
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            // color: const Color.fromARGB(255, 38, 218, 50),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: 185,
                                height: 210,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Stack(
                                  children: [
                                    SizedBox.expand(
                                      child: Image.network(
                                        "https://assets.epicurious.com/photos/5bce4de2ab2c1825ca89c5b5/6:4/w_1600%2Cc_limit/Thanksgiving-2-4-Corn-Spoon-Bread-recipe-09102018.jpg",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 10,
                                      left: 10,
                                      child: Row(
                                        children: [
                                          SvgPicture.asset(
                                            "assets/clock-svgrepo-com (1).svg",
                                            width: 18,
                                            color: Colors.white,
                                          ),
                                          const SizedBox(width: 5),
                                          const Text(
                                            "12 min",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w800),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Positioned(
                                      top: 10,
                                      right: 10,
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.favorite,
                                            size: 18,
                                            color: Colors.white,
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            "12.5K",
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 185,
                                height: 210,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Stack(
                                  children: [
                                    SizedBox.expand(
                                      child: Image.network(
                                        "https://nataliecooks.com/wp-content/uploads/2023/03/DSC07900-2-4.jpg",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 10,
                                      left: 10,
                                      child: Row(
                                        children: [
                                          SvgPicture.asset(
                                            "assets/clock-svgrepo-com (1).svg",
                                            width: 18,
                                            color: Colors.white,
                                          ),
                                          const SizedBox(width: 5),
                                          const Text(
                                            "12 min",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w800),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Positioned(
                                      top: 10,
                                      right: 10,
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.favorite,
                                            size: 18,
                                            color: Colors.white,
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            "12.5K",
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                            ),
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
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            // color: const Color.fromARGB(255, 38, 218, 50),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: 185,
                                height: 210,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Stack(
                                  children: [
                                    SizedBox.expand(
                                      child: Image.network(
                                        "https://cdn.shopify.com/s/files/1/1338/2981/files/Photo_5-4-2023_2_19_20_pmx_9e505a1a-e31f-46d5-aab8-4b9903e969f2_480x480.jpg?v=1680675310",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 10,
                                      left: 10,
                                      child: Row(
                                        children: [
                                          SvgPicture.asset(
                                            "assets/clock-svgrepo-com (1).svg",
                                            width: 18,
                                            color: Colors.white,
                                          ),
                                          const SizedBox(width: 5),
                                          const Text(
                                            "12 min",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w800),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Positioned(
                                      top: 10,
                                      right: 10,
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.favorite,
                                            size: 18,
                                            color: Colors.white,
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            "12.5K",
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 185,
                                height: 210,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Stack(
                                  children: [
                                    SizedBox.expand(
                                      child: Image.network(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQ720nfECdONJInci-IOcAp3sZeH2vN22EbA&s",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 10,
                                      left: 10,
                                      child: Row(
                                        children: [
                                          SvgPicture.asset(
                                            "assets/clock-svgrepo-com (1).svg",
                                            width: 18,
                                            color: Colors.white,
                                          ),
                                          const SizedBox(width: 5),
                                          const Text(
                                            "12 min",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w800),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Positioned(
                                      top: 10,
                                      right: 10,
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.favorite,
                                            size: 18,
                                            color: Colors.white,
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            "12.5K",
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w700,
                                            ),
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
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  )
                : SizedBox(
                    height: 303,
                    // color: Colors.red,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/instagram-tag-icon.svg",
                            width: 45,
                            color: const Color.fromRGBO(27, 94, 32, 1),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Not yet anyone tag you",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                              color: Color.fromRGBO(27, 94, 32, 1),
                            ),
                          )
                        ],
                      ),
                    ))
      ],
    );
  }
}
