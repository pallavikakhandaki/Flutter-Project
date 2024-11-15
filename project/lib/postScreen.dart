import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override 
  State createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  TextEditingController titleController = TextEditingController();
  TextEditingController ingredientController = TextEditingController();
  TextEditingController procedureController = TextEditingController();

  List<String> ingredients = [];

  List<String> procedures = [];

  File? _selectedImage;

  final ImagePicker _picker = ImagePicker();

  void addIngredient() {
    String ingredient = ingredientController.text.trim();
    if (ingredient.isNotEmpty) {
      setState(() {
        ingredients.add(ingredient);
        ingredientController.clear();
      });
    }
  }

  void addProcedure() {
    String procedure = procedureController.text.trim();
    if (procedure.isNotEmpty) {
      setState(() {
        procedures.add(procedure);
        procedureController.clear();
      });
    }
  }

  Future<void> pickImage(ImageSource source) async {
    final XFile? pickedFile = await _picker.pickImage(source: source);
    if (pickedFile != null) {
      setState(() {
        _selectedImage = File(pickedFile.path);
      });
    }
  }
  
  @override  
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom, 
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Center(
                      child: Row(
                        children: [
                          const Spacer(),
                          const Text(
                            "Add Post",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            child: Container(
                              child: const Text(
                                "Post",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
              
                  // Title TextField
                  Row(
                    children: [
                      Image.asset(
                        "assets/title.png",
                        height: 25,
                        width: 25,
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: TextField(
                          textCapitalization: TextCapitalization.words,
                          controller: titleController,
                          decoration: InputDecoration(
                            hintText: "Enter title of recipe",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                            fillColor: Colors.green,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  _selectedImage != null
                      ?  Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color.fromRGBO(27, 94, 32, 1), width: 3), // Set border color and width
                            borderRadius: BorderRadius.circular(20), // Match the border radius of ClipRRect
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16), // Make sure the border radius matches
                            child: Image.file(
                              _selectedImage!,
                              height: 200,
                              width: double.infinity,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        )
                      : TextButton.icon(
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (context) => Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  ListTile(
                                    leading: const Icon(Icons.photo),
                                    title: const Text("Gallery"),
                                    onTap: () {
                                      Navigator.of(context).pop();
                                      pickImage(ImageSource.gallery);
                                    },
                                  ),
                                  ListTile(
                                    leading: const Icon(Icons.camera_alt),
                                    title: const Text("Camera"),
                                    onTap: () {
                                      Navigator.of(context).pop();
                                      pickImage(ImageSource.camera);
                                    },
                                  ),
                                ],
                              ),
                            );
                          },
                          icon: const Icon(Icons.image),
                          label: const Text("Pick an Image"),
                        ),
                  const SizedBox(height: 20),
              
                  Row(
                    children: [
                      Image.asset(
                        "assets/ingredient.png",
                        height: 25,
                        width: 25,
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: TextField(
                          textCapitalization: TextCapitalization.words,
                          controller: ingredientController,
                          decoration: InputDecoration(
                            hintText: "Add Ingredients",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                            suffixIcon: IconButton(
                              icon: const Icon(Icons.add),
                              onPressed: addIngredient,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Ingredients:",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  if (ingredients.isNotEmpty)
                    Container(
                      child: SingleChildScrollView(
                        child: Wrap(
                          spacing: 10,
                          runSpacing: 10,
                          children: ingredients.map((ingredient) => Padding(
                              padding: const EdgeInsets.symmetric(vertical: 0.0),
                              child: IntrinsicWidth(
                                child: Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                                  decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 97, 160, 101),
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: const Color.fromRGBO(27, 94, 32, 1)),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  // mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text(
                                        ingredient,
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 10,),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 5),
                                      child: SvgPicture.asset(
                                        "assets/cancel.svg",
                                        height: 12,
                                        width: 12,
                                        color: Colors.grey[800],
                                      ),
                                    )
                                  ],
                                ),
                                                          ),
                              ),
                          )).toList(), 
                          ),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      
                    Row(
                    children: [
                      Image.asset(
                        "assets/procedure.png",
                        height: 25,
                        width: 25,
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: TextField(
                          textCapitalization: TextCapitalization.words,
                          controller: procedureController,
                          style: const TextStyle(
                            fontSize: 16
                          ),
                          decoration: InputDecoration(
                            hintText: "Add Procedure",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                            suffixIcon: IconButton(
                              icon: const Icon(Icons.add),
                              onPressed: addProcedure,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Procedure:",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  if (procedures.isNotEmpty)
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: SingleChildScrollView(
                        child: Wrap(
                          spacing: 10,
                          runSpacing: 10,
                          children: procedures.map((procedure) => Padding(
                              padding: const EdgeInsets.symmetric(vertical: 0.0),
                              child: Container(
                                // width: MediaQuery.of(context).size.width,
                                padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                                decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 97, 160, 101),
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: const Color.fromRGBO(27, 94, 32, 1)),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                // mainAxisSize: MainAxisSize.min,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text(
                                        procedure,
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: SvgPicture.asset(
                                      "assets/cancel.svg",
                                      height: 12,
                                      width: 12,
                                      color: Colors.grey[800],
                                    ),
                                  )
                                ],
                              ),
                           ),
                          )).toList(), 
                          ),
                        ),
                      ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
