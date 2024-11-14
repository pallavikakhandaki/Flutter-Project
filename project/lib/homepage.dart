import 'package:flutter/material.dart';
import 'package:project/ingrident_screen.dart';
import 'notification.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void openBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true, // Allows the bottom sheet to expand
      builder: (context) {
        return Container(
          height: MediaQuery.of(context).size.height *
              0.8, // Set to 80% of the screen height
          child: Column(
            children: [
              Container(
                  height: 50,
                  child: Center(
                      child: Text(
                    "Notifications",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ))),
              SizedBox(
                height: 10,
              ),
              Notify(),

            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 234, 234, 234),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Hello Fola',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'What are you cooking today?',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            openBottomSheet();
                          },
                          icon: Icon(Icons.notifications)),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: (){
                        },
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/dolly.jfif"),
                          backgroundColor: Colors.orangeAccent,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search recipe',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.green[900],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(Icons.filter_list, color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CategoryTab(text: 'All', isSelected: true),
                  CategoryTab(text: 'Indian'),
                  CategoryTab(text: 'Italian'),
                  CategoryTab(text: 'Asian'),
                  CategoryTab(text: 'Chinese'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  RecipeCard(
                    image: 'assets/salad.jpg',
                    title: 'Classic Greek Salad',
                    time: '15 Mins',
                    rating: '4.5',
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  RecipeCard(
                    image: 'assets/recipe3.jfif',
                    title: 'Crunchy Nut Coleslaw',
                    time: '10 Mins',
                    rating: '3.5',
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  RecipeCard(
                    image: 'assets/dosa.jfif',
                    title: 'Masala Dosa',
                    time: '10 Mins',
                    rating: '5.0',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'New Recipes',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w900,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 170,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  NewRecipeCard(
                    image: 'assets/recipe2.jfif',
                    title: 'Steak with tomato...',
                    author: 'James Milner',
                    time: '20 mins',
                    proimg: 'assets/cookprofile.jfif',
                    rating: '4.5',
                  ),
                  NewRecipeCard(
                    image: 'assets/salad.jpg',
                    title: 'Pilaf sweet...',
                    author: 'Punnet Star',
                    time: '25 mins',
                    proimg: 'assets/punnet.jfif',
                    rating: '3.5',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryTab extends StatelessWidget {
  final String text;
  final bool isSelected;

  const CategoryTab({required this.text, this.isSelected = false, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? Colors.green[900] : Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontWeight: FontWeight.w700),
      ),
    );
  }
}

class RecipeCard extends StatefulWidget {
  final String image;
  final String title;
  final String time;
  final String rating;

  const RecipeCard({
    required this.image,
    required this.title,
    required this.time,
    required this.rating,
    Key? key,
  }) : super(key: key);

  @override
  _RecipeCardState createState() => _RecipeCardState();
}

class _RecipeCardState extends State<RecipeCard> {
  bool _isLiked = false;
  int _likeCount = 0;

  void _toggleLike() {
    setState(() {
      _isLiked = !_isLiked;
      if (_isLiked) {
        _likeCount++;
      } else {
        _likeCount--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40,
          width: 180,
        ),
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 250,
              width: 180,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.5),
                  ],
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 110),
                  Text(
                    widget.title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 60, 59, 59),
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Time',
                            style: const TextStyle(
                                color: Color.fromARGB(255, 79, 74, 74)),
                          ),
                          Text(
                            widget.time,
                            style: const TextStyle(
                                color: Color.fromARGB(255, 30, 27, 27),
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                      Expanded(child: SizedBox()),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: _toggleLike,
                                child: Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color:
                                          _isLiked ? Colors.red : Colors.white),
                                  child: Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Icon(
                                      Icons.favorite,
                                      color:
                                          _isLiked ? Colors.white : Colors.red,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white),
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Icon(
                                    Icons.bookmark_outline,
                                    color: Colors.green[900],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10),
                          Text('Likes: $_likeCount'),
                        ],
                      ),

                      // Display like count
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: -40,
              left: 12,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) => Ingrident(),
                    ),
                  );
                },
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(widget.image),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(color: Colors.white, width: 4),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 10,
              left: 120,
              child: Container(
                height: 30,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.star, color: Colors.orange, size: 16),
                    Text(widget.rating,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0))),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class NewRecipeCard extends StatelessWidget {
  final String image;
  final String title;
  final String author;
  final String time;
  final String rating;
  final String proimg;

  const NewRecipeCard({
    required this.image,
    required this.title,
    required this.author,
    required this.time,
    required this.rating,
    required this.proimg,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Container(
        margin: const EdgeInsets.only(right: 10), // Spacing between cards
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 300,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3), // Shadow position
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 170,
                          child: Text(
                            title,
                            style: const TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 20,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          height: 20,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.star,
                                  color: Colors.orange, size: 16),
                              Text(rating,
                                  style: const TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0))),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: AssetImage("$proimg"),
                                    backgroundColor: Colors.orangeAccent,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'By $author',
                                    style: TextStyle(
                                      color: Colors.grey[600],
                                      fontWeight: FontWeight.w900,
                                      fontSize: 14,
                                    ),
                                  ),
                                  Expanded(
                                    child: SizedBox(),
                                  ),
                                  Row(
                                    children: [
                                      const Icon(Icons.access_time, size: 16),
                                      const SizedBox(width: 4),
                                      Text(
                                        time,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
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
            Positioned(
              top: -30,
              right: 10,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3), // Shadow position
                    ),
                  ],
                ),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(image),
                  backgroundColor:
                      Colors.grey[200], // Placeholder background color
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
