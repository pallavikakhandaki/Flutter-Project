import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Ingrident extends StatefulWidget {
  const Ingrident({super.key});

  @override
  State createState() => _IngridentState();
}

class _IngridentState extends State {
  List<String> procedureStep = [
    "Season the chicken with salt, pepper, and spicy seasoning",
    "Set up three bowls - one with beaten egg, and one with breadcrumbs.",
    "Dip the seasoned chicken in flour, then egg, and finally coat it with breadcrumbs.",
    "Heat oil in a skillet and fry the chicken on medium heat for 4-5 minutes per side until golden and crispy. Drain on a paper towel.",
    "Fry the frozen french fries according to package instructions. Season with salt and spicy seasoning if desired.",
    "In a small bowl, mix mayonnaise and hot sauce to make a spicy mayo spread.",
    "Spread spicy mayo on the inside of each burger bun.",
    "Place lettuce, a slice of tomato, and the fried chicken on the bun. Add a cheese slice if desired.",
    "Add more spicy mayo on the top bun, then place it on the sandwich.",
    "Serve the spicy chicken burger with a side of french fries.",
  ];
  List<Map> ingridentList = [
    {
      "img": "assets/images/tomato.jpg",
      "name": "Tomatos",
      "qunatity": "500g",
    },
    {
      "img": "assets/images/cabbage.jpg",
      "name": "Cabbage",
      "qunatity": "500g",
    },
    {
      "img": "assets/images/green_onion.jpg",
      "name": "Green Onion",
      "qunatity": "500g",
    },
    {
      "img": "assets/images/tomato.jpg",
      "name": "Tomatos",
      "qunatity": "500g",
    },
  ];
  bool isIngridientSelected = true;
  bool isProcedureSelected = false;

  Widget procedure() {
    return Expanded(
      child: ListView.builder(
          itemCount: procedureStep.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                Container(
                  // height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.green[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Step-${index + 1} :",
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          procedureStep[index],
                          style: const TextStyle(fontWeight: FontWeight.w700),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }

  Widget ingrident() {
    return Expanded(
      child: ListView.builder(
          itemCount: ingridentList.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.green[200],
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            height: 60,
                            width: 60,
                            color: Colors.white,
                            child: Image.asset(
                              ingridentList[index]["img"],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        ingridentList[index]["name"],
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Text(
                          ingridentList[index]["qunatity"],
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            );
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 4 / 2,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Stack(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        color: Colors.amber,
                        child: Image.asset(
                          "assets/images/image.webp",
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.black.withOpacity(1),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 9,
                      right: 10,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.amber[100],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber[800],
                              size: 16,
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            const Text(
                              "4.0",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Positioned(
                      bottom: 9,
                      right: 10,
                      child: Row(
                        children: [
                          Icon(
                            Icons.watch_later_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "20 min",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.bookmark,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Row(
              children: [
                SizedBox(
                  height: 60,
                  width: 150,
                  child: Text(
                    "Spicy chicken burger with French Fries",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.amber),
                  child: ClipOval(
                    child: Image.asset(
                      "assets/images/chef.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Laura wilson",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text("Pune")
                  ],
                ),
                const SizedBox(
                  width: 60,
                ),
                Container(
                  height: 30,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green[900],
                  ),
                  child: const Center(
                    child: Text(
                      "Follow",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isIngridientSelected = true;
                      isProcedureSelected = false;
                    });
                  },
                  child: Container(
                    height: 40,
                    width: 175,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: isIngridientSelected
                          ? Colors.green[900]
                          : Colors.grey[200],
                    ),
                    child: Center(
                      child: Text(
                        "Ingrident",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: isIngridientSelected
                                ? Colors.white
                                : Colors.green[900]),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isIngridientSelected = false;
                      isProcedureSelected = true;
                    });
                  },
                  child: Container(
                    height: 40,
                    width: 175,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: isProcedureSelected
                          ? Colors.green[900]
                          : Colors.grey[200],
                    ),
                    child: Center(
                      child: Text(
                        "Procedure",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: isProcedureSelected
                              ? Colors.white
                              : Colors.green[900],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            isIngridientSelected ? ingrident() : procedure(),
          ],
        ),
      ),
    );
  }
}
