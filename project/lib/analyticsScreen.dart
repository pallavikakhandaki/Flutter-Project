import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnalyticsScreen extends StatefulWidget {
  const AnalyticsScreen({super.key});

  @override
  State createState() => _AnalyticsScreenState();
}

class _AnalyticsScreenState extends State<AnalyticsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Leaderboard"),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          const SizedBox(height: 20),
          _buildTopThreeContainer(),
          const SizedBox(height: 20),
          _buildRankList(),
        ],
      ),
    );
  }

 
  Widget _buildTopThreeContainer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildRankContainer(
          height: 200,
          imageUrl: "https://img.freepik.com/premium-photo/portrait-handsome-anime-boy-avatar-computer-graphic-background-2d-illustration_67092-1984.jpg?w=2000",
          rank: "2",
        ),
        _buildRankContainer(
          height: 245,
          imageUrl: "https://play-lh.googleusercontent.com/7Ak4Ye7wNUtheIvSKnVgGL_OIZWjGPZNV6TP_3XLxHC-sDHLSE45aDg41dFNmL5COA",
          rank: "1",
        ),
        _buildRankContainer(
          height: 200,
          imageUrl: "https://img.freepik.com/premium-photo/illustration-cute-boy-avatar-graphic-white-background-created-with-generative-ai-technology_67092-4570.jpg",
          rank: "3",
        ),
      ],
    );
  }

  Widget _buildRankContainer({
    required double height,
    required String imageUrl,
    required String rank,
  }) {
    return Container(
      height: height,
      width: 105,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Positioned(
                top: -4,
                right: 12,
                child: Transform.rotate(
                  angle: 32 * 3.141592653589793 / 180,
                  child: SizedBox(
                    width: 38,
                    height: 38,
                    child: Image.asset(
                      "assets/crown.png",
                      height: 24,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              // Avatar image
              Container(
                height: 95,
                child: Center(
                  child: Container(
                    height: 70,
                    width: 70,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey,
                    ),
                    child: Image.network(
                      imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: height * 0.45,
            width: 105,
            decoration: BoxDecoration(
                color: Colors.amber, borderRadius: BorderRadius.circular(4)),
            child: Center(
              child: Text(
                rank,
                style: GoogleFonts.merriweather(
                  fontSize: height * 0.3,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRankList() {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.purple, Colors.orange]),
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Container(
            height: 40,
            child: const Text(
              "Rank",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 24,
              ),
            ),
          ),
          const SizedBox(height: 10),
          ListView.builder(
            shrinkWrap: true, // Important to make it work inside Column
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 8,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.green[900],
                      border: Border.all(color: Colors.white, width: 2),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 40,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.network(
                                    "https://tse4.mm.bing.net/th?id=OIP.wEsBe2udHBieFeZVmus8qAHaHk&pid=Api&P=0&h=180"),
                              ),
                            ),
                            const SizedBox(width: 20),
                            const Text(
                              "Prathamesh Godage",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        Container(
                          width: 30,
                          child: Center(
                            child: Text(
                              "${index + 1}",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
