import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/food_description.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      appBar: AppBar(
        backgroundColor: Colors.amber[50],
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
          Spacer(),
          IconButton(onPressed: () {}, icon: Icon(Icons.search))
        ],
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(16, 16, 16, 40),
        child: Column(
          spacing: 24,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Restaurant",
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Colors.black54,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8))),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 6),
                                      child: Text(
                                        "20-30 min",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      "2.4km",
                                      style: TextStyle(
                                        color: Colors.black54,
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      "Resturant",
                                      style: TextStyle(
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                              color: Colors.white,
                            ),
                            width: 80,
                            height: 80,
                            alignment: Alignment.center,
                            child: SvgPicture.asset(
                              "assets/images/restaurant_logo.svg",
                              colorFilter: ColorFilter.linearToSrgbGamma(),
                              width: 48,
                              height: 48,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  "Orange Sandwiches is delicious",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Spacer(),
                Row(
                  children: [
                    Icon(Icons.star_border_outlined,
                        size: 20, color: Colors.amber[700]),
                    Text(
                      "4.7",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color:
                              Theme.of(context).colorScheme.onSurfaceVariant),
                    )
                  ],
                )
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 16,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    decoration: BoxDecoration(
                      color: Colors.amber[600],
                      borderRadius: BorderRadius.all(Radius.circular(9999)),
                    ),
                    child: Text(
                      "Recommended",
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            color: Colors.white,
                          ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(9999)),
                    ),
                    child: Text(
                      "Popular",
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(9999)),
                    ),
                    child: Text(
                      "Noodles",
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(9999)),
                    ),
                    child: Text(
                      "Pizza",
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(9999)),
                    ),
                    child: Text(
                      "Sushi",
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  )
                ],
              ),
            ),
            Column(
              spacing: 16,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (ctx) => FoodDescription(),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(24))),
                    child: Row(
                      spacing: 12,
                      children: [
                        Image(
                          width: 96,
                          image: AssetImage("assets/images/dish1.png"),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Soba Soup",
                                style: Theme.of(context).textTheme.labelLarge,
                              ),
                              Text(
                                "No.1 in sales",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                      color: Colors.amber[700],
                                    ),
                              ),
                              Row(
                                spacing: 2,
                                children: [
                                  Text("\$",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall),
                                  Text(
                                    "12",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium
                                        ?.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Icon(Icons.chevron_right),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (ctx) => FoodDescription(),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(24))),
                    child: Row(
                      spacing: 12,
                      children: [
                        Image(
                          width: 96,
                          image: AssetImage("assets/images/dish1.png"),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Soba Soup",
                                style: Theme.of(context).textTheme.labelLarge,
                              ),
                              Text(
                                "No.1 in sales",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                      color: Colors.amber[700],
                                    ),
                              ),
                              Row(
                                spacing: 2,
                                children: [
                                  Text("\$",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall),
                                  Text(
                                    "12",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium
                                        ?.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Icon(Icons.chevron_right),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (ctx) => FoodDescription(),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(24))),
                    child: Row(
                      spacing: 12,
                      children: [
                        Image(
                          width: 96,
                          image: AssetImage("assets/images/dish1.png"),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Soba Soup",
                                style: Theme.of(context).textTheme.labelLarge,
                              ),
                              Text(
                                "No.1 in sales",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                      color: Colors.amber[700],
                                    ),
                              ),
                              Row(
                                spacing: 2,
                                children: [
                                  Text("\$",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall),
                                  Text(
                                    "12",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium
                                        ?.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Icon(Icons.chevron_right),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    color: Colors.amber[600],
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        backgroundColor: Colors.amber[600],
        onPressed: () {},
        child: Icon(
          Icons.shopping_bag_outlined,
          color: Colors.white,
        ),
      ),
    );
  }
}
