import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app/config/app_release.dart';
import 'package:travel_app/config/theme/color_schemes.dart';
import 'package:travel_app/screens/widgets/my_list_chip.dart';
import 'package:travel_app/screens/widgets/my_search_bar.dart';

import '../../widgets/my_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final txtSearch = TextEditingController(text: "ok");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(320),
        child: Container(
          color: colorScheme(context).inversePrimary,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBar(
                leading: Builder(builder: (context) {
                  return Container(
                    decoration: BoxDecoration(
                        color: colorScheme(context).tertiary,
                        borderRadius: const BorderRadius.horizontal(
                            right: Radius.circular(12))),
                    child: IconButton(
                      color: colorScheme(context).onTertiary,
                      icon: const Icon(Icons.menu),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                    ),
                  );
                }),
                backgroundColor: colorScheme(context).inversePrimary,
                title: Text(
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall
                        ?.copyWith(fontWeight: FontWeight.bold),
                    NAME_APP.toUpperCase()),
                centerTitle: true,
                actions: [
                  Card(
                    color: colorScheme(context).tertiary,
                    margin: const EdgeInsets.only(right: 16),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                          padding: const EdgeInsets.all(8),
                          child: Image.asset(
                              width: 36, "assets/images/avatar.png")),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 14),
              Container(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Let enjoy a vacation!",
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontFamily: GoogleFonts.rosario().fontFamily),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    MySearchBar(
                      txtSearch: txtSearch.text,
                      onChanged: (p0) {},
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Text("Bạn đang cảm thầy thế nào?"),
                    const SizedBox(
                      height: 16,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ItemIconFeedback(
                            title: "Tệ",
                            imageUri: "assets/images/bad.png"),
                        ItemIconFeedback(
                          title: "Ổn",
                          imageUri: "assets/images/fine.png",
                        ),
                        ItemIconFeedback(
                            title: "Tốt",
                            imageUri: "assets/images/well.png"),
                        ItemIconFeedback(
                          title: "Tuyệt vời",
                          imageUri: "assets/images/wonderful.png",
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: BodyHomeScreen(),
    );
  }
}

class BodyHomeScreen extends StatelessWidget {
  const BodyHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 22,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Vị trí", style: Theme.of(context).textTheme.titleSmall,),
              Text("Xem tất cả", style:TextStyle(fontSize: 12, color: colorScheme(context).onBackground.withOpacity(0.6)))
            ],
          ),
          SizedBox(height: 12,),
          MyListChip()
        ],
      ),
    );
  }
}


class ItemIconFeedback extends StatelessWidget {
  const ItemIconFeedback(
      {Key? key,
      this.title = "title",
      this.imageUri = "assets/images/wonderful.png"})
      : super(key: key);

  final String title;
  final String imageUri;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(12),
      color: colorScheme(context).tertiaryContainer,
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
          child: Column(
            children: [
              Image.asset(imageUri),
              SizedBox(
                height: 6,
              ),
              Text(title)
            ],
          ),
        ),
      ),
    );
  }
}
