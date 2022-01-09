import 'package:flutter/material.dart';
import 'package:flutter_crown_2/export_pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              Text(
                'Furniture in\nunique style',
                style: heading,
              ),
              SizedBox(height: 10),
              Text(
                "We have wide rang of Furniture",
                style: subHeading,
              ),
              SizedBox(height: 20),
              Container(
                height: 70,
                child: TabBarButton(),
              ),
              Expanded(
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: models.length,
                  itemBuilder: (builder, index) {
                    final model = models[index];
                    return ItemCard(model: model);
                  },
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          child: Container(
            height: 70,
            color: green,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    // color: white,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      bottomNavButton(
                        onPress: () {},
                        icon: Icons.home_outlined,
                      ),
                      SizedBox(width: 60),
                      bottomNavButton(
                        onPress: () {},
                        icon: Icons.chat_outlined,
                      ),
                      SizedBox(width: 60),
                      bottomNavButton(
                        onPress: () {},
                        icon: Icons.person_outline_outlined,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  IconButton bottomNavButton({
    required Function() onPress,
    required IconData icon,
  }) {
    return IconButton(
      onPressed: onPress,
      icon: Icon(
        icon,
        size: 40,
        color: white,
      ),
    );
  }
}
