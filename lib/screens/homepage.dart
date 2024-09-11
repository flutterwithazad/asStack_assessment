import 'package:flutter/material.dart';
import "package:badges/badges.dart" as badges;
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    final kHeight = MediaQuery.of(context).size.height;
    final kWidth = MediaQuery.of(context).size.width;

    List menuList = [
      'Home',
      "Employees",
      "Attendence",
      "Summary",
      "Information"
    ];
    List<bool> selecteddata = List.generate(menuList.length, (index) => false);
    List<IconData> icons = [
      Icons.home,
      Icons.people_alt_outlined,
      Icons.checklist_rounded,
      Icons.calendar_month_outlined,
      Icons.info_outline,
    ];

    List imagesAllProject = [
      "https://www.simplilearn.com/ice9/free_resources_article_thumb/Technology_Trends.jpg",
      "https://images.unsplash.com/photo-1518770660439-4636190af475?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "https://plus.unsplash.com/premium_photo-1683120974913-1ef17fdec2a8?q=80&w=1563&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    ];

    List topCreatorUsername = [
      "@maddison_452",
      "@karliwill_02",
      "@maddison_452",
      "@maddison_452"
    ];

    List topCreatorAvatar = [
      "assets/images/avt1.jpeg",
      "assets/images/avt2.jpeg",
      "assets/images/avt3.jpeg",
      "assets/images/avt4.jpeg"
    ];

    List topCreatorArtwork = ["9821", "7032", "9821", "9821"];

    DateTime _focusDay = DateTime.now();

    return Scaffold(
      body: Row(
        children: [
          adstacks_column(kHeight, kWidth, menuList, icons),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 10),
              color: Colors.grey[200],
              child: Column(
                children: [
                  Container(
                    height: kHeight * 0.05,
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Home",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            fontSize: 17,
                          ),
                        ),
                        const Spacer(
                          flex: 20,
                        ),
                        SizedBox(
                          height: 30,
                          width: 250,
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Search",
                                hintStyle: const TextStyle(
                                    color: Colors.white70, fontSize: 13),
                                suffixIcon: const Icon(Icons.search),
                                suffixIconColor: Colors.white70,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12)),
                                filled: true,
                                fillColor: const Color(0xff391652)),
                          ),
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                        const Icon(Icons.messenger_outline_rounded),
                        const Spacer(
                          flex: 1,
                        ),
                        const badges.Badge(
                          badgeStyle: badges.BadgeStyle(
                            badgeColor: Color.fromARGB(255, 250, 150, 142),
                          ),
                          badgeContent: Text(
                            "21",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 8,
                                fontWeight: FontWeight.bold),
                          ),
                          child: Icon(Icons.notifications_none),
                        ),
                        const Spacer(
                          flex: 1,
                        ),
                        const Icon(Icons.logout_rounded),
                        const Spacer(
                          flex: 2,
                        ),
                        const CircleAvatar(
                          backgroundImage:
                              NetworkImage("assets/images/002.jpg"),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: kWidth * 0.58,
                        height: kHeight * 0.90,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 10),
                                height: kHeight * 0.28,
                                width: kWidth * 0.55,
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(17)),
                                    gradient: LinearGradient(
                                        colors: [
                                          Color(0xff562DC9),
                                          Color(0xffF9AEAD),
                                        ],
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "E T H E R E U M  2.0",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 8,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    const Text(
                                      "Top Rating\nProject",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    const Text(
                                      "Trending project and high rating\nProject Created by team",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 11,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              const Color(0xff261B4C),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10))),
                                      child: const Text(
                                        "Learn more",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 9.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.only(
                                          left: 10, top: 15),
                                      margin: const EdgeInsets.only(left: 10),
                                      height: kHeight * 0.34,
                                      width: kWidth * 0.25,
                                      decoration: BoxDecoration(
                                          color: const Color(0xff111C44),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "All Projects",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Expanded(
                                            child: ListView.builder(
                                                shrinkWrap: true,
                                                itemCount: 3,
                                                itemBuilder: (context, index) {
                                                  return Card(
                                                      color: index == 0
                                                          ? const Color(
                                                              0xffC13750)
                                                          : const Color(
                                                              0xff1B254B),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10)),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Container(
                                                            margin:
                                                                const EdgeInsets
                                                                    .all(6),
                                                            height: 35,
                                                            width: 35,
                                                            decoration:
                                                                BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(5),
                                                                    image: DecorationImage(
                                                                        image: NetworkImage(
                                                                          imagesAllProject[
                                                                              index],
                                                                        ),
                                                                        fit: BoxFit.cover)),
                                                          ),
                                                          Column(
                                                            children: [
                                                              const Text(
                                                                "Technology behind the blockchain",
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 12,
                                                                ),
                                                              ),
                                                              Row(
                                                                children: [
                                                                  Text(
                                                                    "Project #1",
                                                                    style: TextStyle(
                                                                        color: index ==
                                                                                0
                                                                            ? Colors
                                                                                .black
                                                                            : Colors
                                                                                .white,
                                                                        fontSize:
                                                                            8),
                                                                  ),
                                                                  const SizedBox(
                                                                    width: 10,
                                                                  ),
                                                                  const Text(
                                                                    "See project details",
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        fontSize:
                                                                            8,
                                                                        decoration:
                                                                            TextDecoration.underline),
                                                                  )
                                                                ],
                                                              )
                                                            ],
                                                          ),
                                                          const Spacer(),
                                                          IconButton(
                                                              onPressed: () {},
                                                              icon: const Icon(
                                                                Icons.edit,
                                                                size: 15,
                                                                color: Colors
                                                                    .white,
                                                              ))
                                                        ],
                                                      ));
                                                }),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(
                                          right: 10, top: 5),
                                      margin: const EdgeInsets.only(right: 10),
                                      height: kHeight * 0.34,
                                      width: kWidth * 0.25,
                                      decoration: BoxDecoration(
                                          color: const Color(0xff111C44),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Column(
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.only(
                                                top: 10, left: 10),
                                            width: kWidth * 0.25,
                                            height: kHeight * 0.1,
                                            color: const Color(0xffB254B),
                                            child: const Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Top Creators",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    Text(
                                                      "Name",
                                                      style: TextStyle(
                                                          color: Colors.grey,
                                                          fontSize: 12),
                                                    ),
                                                    Text(
                                                      "Artworks",
                                                      style: TextStyle(
                                                          color: Colors.grey,
                                                          fontSize: 12),
                                                    ),
                                                    Text(
                                                      "Rating",
                                                      style: TextStyle(
                                                          color: Colors.grey,
                                                          fontSize: 12),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            child: ListView.builder(
                                                itemCount: 3,
                                                itemBuilder: (context, index) {
                                                  return ListTile(
                                                    leading: CircleAvatar(
                                                      backgroundImage:
                                                          AssetImage(
                                                              topCreatorAvatar[
                                                                  index]),
                                                    ),
                                                    title: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          topCreatorUsername[
                                                              index],
                                                          style:
                                                              const TextStyle(
                                                                  fontSize: 10,
                                                                  color: Colors
                                                                      .white),
                                                        ),
                                                        Text(
                                                          topCreatorArtwork[
                                                              index],
                                                          style:
                                                              const TextStyle(
                                                                  fontSize: 10,
                                                                  color: Colors
                                                                      .white),
                                                        ),
                                                        const SizedBox(
                                                          width: 10,
                                                        ),
                                                        Container(
                                                          height: 7,
                                                          width: 30,
                                                          decoration: BoxDecoration(
                                                              color: const Color(
                                                                  0xff7551ff),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5)),
                                                        )
                                                      ],
                                                    ),
                                                  );
                                                }),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Placeholder(
                                color: Colors.red,
                                fallbackHeight: kHeight * 0.25,
                                fallbackWidth: kWidth * 0.58,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          height: kHeight * 0.9,
                          color: const Color(0xff1B254B),
                          child: Column(
                            children: [
                              const Text(
                                "GENERAL 10:00 AM TO 07:00 PM",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              ),
                              const Spacer(),
                              Container(
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                width: 180,
                                height: 180,
                                child: SfCalendar(
                                  view: CalendarView.month,
                                  cellBorderColor: Colors.transparent,
                                ),

                                // child: TableCalendar(
                                //   rowHeight: 30,
                                //   focusedDay: _focusDay,
                                //   firstDay: DateTime.utc(2024, 09, 01),
                                //   lastDay: DateTime.utc(2025, 10, 25),
                                //   headerVisible: false,
                                // ),
                              ),
                              const Spacer(),
                              Container(
                                decoration: BoxDecoration(
                                    color: const Color(0xff3C354A),
                                    borderRadius: BorderRadius.circular(10)),
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 50),
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                height: kHeight * 0.25,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Image.asset(
                                          "assets/images/sparkles.png",
                                          height: 20,
                                          width: 20,
                                        ),
                                        const Text(
                                          "Today Birthday",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Image.asset(
                                          "assets/images/sparkles.png",
                                          height: 20,
                                          width: 20,
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    const Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 20,
                                          backgroundImage: AssetImage(
                                              "assets/images/avt2.jpeg"),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        CircleAvatar(
                                          radius: 20,
                                          backgroundImage: AssetImage(
                                              "assets/images/avt3.jpeg"),
                                        )
                                      ],
                                    ),
                                    const Spacer(),
                                    Row(
                                      children: [
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Text(
                                          "Total",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 14),
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        Container(
                                          height: 16,
                                          width: 1,
                                          color: Colors.white,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Text(
                                          "2",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          height: 16,
                                          width: 1,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            const Color(0xffBA7DF4),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Icon(
                                            Icons.send_rounded,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            "Birthday Wishing",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const Spacer(),
                              Container(
                                decoration: BoxDecoration(
                                    color: const Color(0xff3C354A),
                                    borderRadius: BorderRadius.circular(10)),
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 50),
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                height: kHeight * 0.25,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Image.asset(
                                          "assets/images/sparkles.png",
                                          height: 20,
                                          width: 20,
                                        ),
                                        const Text(
                                          "Anniversary",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        Image.asset(
                                          "assets/images/sparkles.png",
                                          height: 20,
                                          width: 20,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 20,
                                          backgroundImage: AssetImage(
                                              "assets/images/avt2.jpeg"),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        CircleAvatar(
                                          radius: 20,
                                          backgroundImage: AssetImage(
                                              "assets/images/avt3.jpeg"),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        CircleAvatar(
                                          radius: 20,
                                          backgroundImage: AssetImage(
                                              "assets/images/avt1.jpeg"),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Text(
                                          "Total",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 14),
                                        ),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        Container(
                                          height: 16,
                                          width: 1,
                                          color: Colors.white,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        const Text(
                                          "3",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          height: 16,
                                          width: 1,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            const Color(0xffBA7DF4),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Icon(
                                            Icons.send_rounded,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            "Anniversary Wishing",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Container adstacks_column(double kHeight, double kWidth,
      List<dynamic> menuList, List<IconData> icons) {
    return Container(
      height: kHeight,
      width: kWidth * 0.2,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Column(
          children: [
            Image.network(
              "assets/images/logo.png",
              height: kHeight * 0.06,
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(
              indent: 15,
              endIndent: 15,
              height: 1,
              color: Colors.grey,
            ),
            const SizedBox(
              height: 5,
            ),
            Column(
              children: [
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://static.vecteezy.com/system/resources/thumbnails/024/354/241/small_2x/happy-girl-standing-in-creative-office-illustration-ai-generative-free-photo.jpg"),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text("Pooja Mishra"),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 1),
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.grey,
                      ),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Text(
                    "Admin",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(
              indent: 15,
              endIndent: 15,
              height: 1,
              color: Colors.grey,
            ),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
              height: kHeight * 0.28,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: menuList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: ListTile(
                        dense: true,
                        title: Text(
                          menuList[index],
                          style: TextStyle(
                              fontSize: index == 0 ? 14 : 10,
                              fontWeight: index == 0
                                  ? FontWeight.bold
                                  : FontWeight.normal),
                        ),
                        leading: Icon(
                          icons[index],
                          color: index == 0 ? Colors.black : Colors.grey,
                        ),
                      ),
                    );
                  }),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: kHeight * 0.15,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 45),
                    child: const Text(
                      "WORKSPACES",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 50),
                    child: Column(
                      children: [
                        ListTile(
                          dense: true,
                          title: Text("Adstacks"),
                          trailing: Icon(Icons.keyboard_arrow_down_rounded),
                        ),
                        ListTile(
                          dense: true,
                          title: Text("Finance"),
                          trailing: Icon(Icons.keyboard_arrow_down_rounded),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left: 40, bottom: 10),
                height: kHeight * 0.2,
                child: const Column(
                  children: [
                    ListTile(
                      title: Text(
                        "Setting",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      leading: Icon(Icons.settings_outlined),
                    ),
                    ListTile(
                      title: Text(
                        "Logout",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      leading: Icon(Icons.logout_outlined),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
