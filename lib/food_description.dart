import 'package:flutter/material.dart';

class FoodDescription extends StatelessWidget {
  const FoodDescription({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[600],
      appBar: AppBar(
        backgroundColor: Colors.amber[600],
        actions: [
          Spacer(),
          IconButton(
              onPressed: () {}, icon: Icon(Icons.favorite_border_outlined))
        ],
      ),
      body: Stack(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 128),
              padding: EdgeInsets.only(top: 144),
              decoration: BoxDecoration(
                color: Colors.amber[50],
                borderRadius: BorderRadius.vertical(top: Radius.circular(48)),
              ),
              child: Column(
                children: [
                  Text(
                    "Sei Ua Samun Phrai",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    spacing: 24,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        spacing: 6,
                        children: [
                          Icon(Icons.schedule_outlined,
                              size: 20, color: Colors.blue),
                          Text(
                            "50 min",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onSurfaceVariant),
                          )
                        ],
                      ),
                      Row(
                        spacing: 6,
                        children: [
                          Icon(Icons.star_border_outlined,
                              size: 20, color: Colors.amber[600]),
                          Text(
                            "4.8",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onSurfaceVariant),
                          )
                        ],
                      ),
                      Row(
                        spacing: 6,
                        children: [
                          Icon(Icons.local_fire_department_outlined,
                              size: 20, color: Colors.red[600]),
                          Text(
                            "4.8",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onSurfaceVariant),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(9999)),
                        color: Colors.white),
                    child: Row(
                      mainAxisSize: MainAxisSize
                          .min, // Ensures the Row only takes the space it needs

                      spacing: 12,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Row(
                            spacing: 2,
                            children: [
                              Text("\$",
                                  style:
                                      Theme.of(context).textTheme.bodyMedium),
                              Text(
                                "12",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineMedium
                                    ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(9999)),
                              color: Colors.amber[500]),
                          child: Row(
                            children: [
                              IconButton(
                                  onPressed: () {}, icon: Icon(Icons.remove)),
                              Container(
                                width: 40,
                                height: 40,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(9999)),
                                    color: Colors.white),
                                child: Text(
                                  "1",
                                  style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSurfaceVariant,
                                      fontSize: 18),
                                ),
                              ),
                              IconButton(
                                  onPressed: () {}, icon: Icon(Icons.add)),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ingredienta",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(
                                  color:
                                      Theme.of(context).colorScheme.onSurface),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          spacing: 16,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(9999),
                                ),
                              ),
                              padding: EdgeInsets.fromLTRB(16, 16, 16, 24),
                              child: Column(
                                spacing: 4,
                                children: [
                                  Image(
                                      width: 48,
                                      image: AssetImage(
                                          'assets/images/ingre1.png')),
                                  Text(
                                    "Noodle",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onSurfaceVariant),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(9999),
                                ),
                              ),
                              padding: EdgeInsets.fromLTRB(16, 16, 16, 24),
                              child: Column(
                                spacing: 4,
                                children: [
                                  Image(
                                      width: 48,
                                      image: AssetImage(
                                          'assets/images/ingre2.png')),
                                  Text(
                                    "Shrimp",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onSurfaceVariant),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(9999),
                                ),
                              ),
                              padding: EdgeInsets.fromLTRB(16, 16, 16, 24),
                              child: Column(
                                spacing: 4,
                                children: [
                                  Image(
                                      width: 48,
                                      image: AssetImage(
                                          'assets/images/ingre3.png')),
                                  Text(
                                    "Egg",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onSurfaceVariant),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(9999),
                                ),
                              ),
                              padding: EdgeInsets.fromLTRB(16, 16, 16, 24),
                              child: Column(
                                spacing: 4,
                                children: [
                                  Image(
                                      width: 48,
                                      image: AssetImage(
                                          'assets/images/ingre4.png')),
                                  Text(
                                    "Scallion",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onSurfaceVariant),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Ingredienta",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSurface),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "A vibrant Thai sausage made with ground chicken, plus its spicy chile dip, from Chef Parnass Savang of Atlanta's Talat Market.",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge
                                ?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSurfaceVariant),
                          ),
                        ]),
                  ),
                ],
              ),
            ),
          ),
          Center(
            heightFactor: 1,
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(9999)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0, 12),
                          blurRadius: 16,
                          spreadRadius: -8),
                    ]),
                child: Image(
                    width: 256, image: AssetImage("assets/images/dish1.png"))),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.amber[600],
        onPressed: () {},
        label: Row(
          children: [
            Icon(
              Icons.shopping_bag_outlined,
              color: Colors.white,
            ),
            SizedBox(width: 8), // Space between the icon and the counter
            Container(
              width: 24,
              height: 24,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(9999)),
                color: Colors.white,
              ),
              child: Text(
                "1",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
