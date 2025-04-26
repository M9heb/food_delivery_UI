import 'package:flutter/material.dart';

class FoodDescription extends StatelessWidget {
  const FoodDescription({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[500],
      appBar: AppBar(
        backgroundColor: Colors.amber[500],
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
                  Row(
                    spacing: 2,
                    children: [
                      Text("\$", style: Theme.of(context).textTheme.bodyMedium),
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
                  )
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
    );
  }
}
