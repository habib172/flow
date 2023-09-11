import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testing/widgets/custom_button.dart';
import 'package:testing/widgets/icon_button.dart';

class Task extends StatelessWidget {
  const Task({super.key});

  @override
  Widget build(BuildContext context) {
    double radius = 10;
    List<String> pizzaList = [
      "assets/images/pizza.jpg",
      "assets/images/pizza2.jpg",
      "assets/images/pizza3.jpg",
      "assets/images/pizza4.jpg",
      "assets/images/pizza5.jpg",
      "assets/images/pizza6.jpg",
      "assets/images/pizza7.jpg",
    ];
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15))),
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                    child: TextField(
                      style: const TextStyle(fontSize: 16, height: 0.7, color: Colors.black),

                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        prefixIcon: const Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.yellow,
                        ),
                        suffixIcon: const Icon(
                          Icons.search,
                          color: Colors.yellow,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(radius),
                            borderSide: BorderSide.none),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(radius),
                            borderSide: BorderSide.none),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(radius),
                            borderSide: BorderSide.none),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: CustomButton(
                          title: "Sort",
                          icon: FaIcon(
                            FontAwesomeIcons.sort,
                            color: Colors.yellow,
                            size: 20,
                          ),
                        ),
                      ),

                      Expanded(
                        child: CustomButton(
                          title: "Filter",
                          icon: FaIcon(
                            FontAwesomeIcons.filter,
                            color: Colors.yellow,
                            size: 20,
                          ),
                        ),
                      ),

                      Expanded(
                        child: CustomButton(
                          title: "Map",
                          icon: FaIcon(
                            FontAwesomeIcons.globe,
                            color: Colors.yellow,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            // const SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                children: [
                  RichText(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    text: TextSpan(
                      text: 'Home ',
                      style: const TextStyle(color: Colors.yellow, fontSize: 10),
                      children: [
                        TextSpan(
                          text: 'Shyamoly, Dhaka',
                          style: const TextStyle(color: Colors.black),
                          recognizer: TapGestureRecognizer()..onTap = () {},
                        ),
                      ],
                    ),
                  ),
                  const Icon(Icons.arrow_drop_down_sharp),
                  const Spacer(),
                  const Text(
                    "Restaurants in radius 1KM",
                    style: TextStyle(fontSize: 10),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),

            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                itemCount: pizzaList.length,
                itemBuilder: (context, index) => Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.yellow, // Shadow color
                        offset: Offset(-1, 0), // Offset to the left
                        blurRadius: 0, // Blur radius
                      ),
                      BoxShadow(
                        color: Colors.yellow, // Shadow color
                        offset: Offset(1, 0), // Offset to the right
                        blurRadius: 0, // Blur radius
                      ),
                      BoxShadow(
                        color: Colors.yellow, // Shadow color
                        offset: Offset(0, 1), // Offset to the bottom
                        blurRadius: 0, // Blur radius
                      ),
                    ],
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 100,
                        child: Row(
                          children: [
                            Container(
                              height: double.infinity,
                              width: 100,
                              padding: const EdgeInsets.only(right: 10, top: 10),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    pizzaList[index],
                                  ),
                                  fit: BoxFit.fill,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              alignment: Alignment.topRight,
                              child: const Icon(
                                Icons.favorite_border,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Expanded(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Domino's Pizza Mohammadpur",
                                  textAlign: TextAlign.start,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 13, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "#98 of 565 pizza restaurant in dhaka",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.green),
                                ),
                                Text(
                                  "Closed Now",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style:
                                      TextStyle(fontSize: 13, color: Colors.red),
                                ),
                                Text(
                                  "Pizza, First Food, Vegetarians options",
                                  textAlign: TextAlign.start,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),)
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Expanded(child: CustomIconButton(icon: FontAwesomeIcons.locationArrow, iconColor: Colors.red, title: "400M", textColor: Colors.black,)),
                          Expanded(child: CustomIconButton(icon: FontAwesomeIcons.google, iconColor: Colors.orange, title: "Google 4.0/5", textColor: Colors.orange, color: Colors.blueGrey.shade50,)),
                          const SizedBox(width: 5,),
                          Expanded(child: CustomIconButton(icon: FontAwesomeIcons.facebook, iconColor: Colors.blue, title: "Facebook 5.0/5", textColor: Colors.blue, color: Colors.blueGrey.shade50,)),

                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




