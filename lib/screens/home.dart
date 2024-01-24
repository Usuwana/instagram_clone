import '../data/api.dart';
import '../presentation/my_flutter_app_icons.dart';
import '../screens/explore.dart';
import '../screens/notifications.dart';
import '../screens/profile.dart';
import '../screens/reels.dart';
import '../utils/imports.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:readmore/readmore.dart';
import 'package:read_more_text/read_more_text.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  API api = new API();

  List<Widget> _widgetOptions = <Widget>[
    const Home(),
    const Explore(),
    const Reels(
      title: '',
    ),
    const Notifications(),
    const Profile()
  ];

  @override
  void initState() {
    //API api = new API();
    //api.getUpcoming();
    //api.getPosts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text(
          "Instagram",
          style: GoogleFonts.getFont('Quintessential')
              .copyWith(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        actions: const [
          Icon(MyFlutterApp.plus),
          SizedBox(
            width: 30,
          ),
          Icon(MyFlutterApp.chat),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Container(
        color: Colors.black87,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stories(
                displayProgress: true,
                storyItemList: [
                  // First group of stories
                  StoryItem(
                      name: "TomHolland",
                      thumbnail: const NetworkImage(
                        "https://wallpaperaccess.com/full/1087845.jpg",
                      ),
                      stories: [
                        // First story
                        Scaffold(
                          body: Container(
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  "https://wallpaperaccess.com/full/16568.png",
                                ),
                              ),
                            ),
                          ),
                        ),
                        // Second story in first group
                        Scaffold(
                          body: Container(
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  "https://wallpaperaccess.com/full/7792493.jpg",
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
                  // Second story group
                  StoryItem(
                    name: "Zendaya",
                    thumbnail: const NetworkImage(
                      "https://wallpaperaccess.com/full/465492.jpg",
                    ),
                    stories: [
                      Scaffold(
                        body: Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                "https://wallpaperaccess.com/full/465556.jpg",
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  StoryItem(
                    name: "KimKardashian",
                    thumbnail: const NetworkImage(
                      "https://wallpaperaccess.com/full/26693.jpg",
                    ),
                    stories: [
                      Scaffold(
                        body: Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                "https://wallpaperaccess.com/full/8304573.jpg",
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  StoryItem(
                    name: "OliverQueen",
                    thumbnail: const NetworkImage(
                      "https://wallpaperaccess.com/full/1908621.jpg",
                    ),
                    stories: [
                      Scaffold(
                        body: Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                "https://wallpaperaccess.com/full/3402629.jpg",
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  StoryItem(
                    name: "BarryAllen",
                    thumbnail: const NetworkImage(
                      "https://wallpaperaccess.com/full/135272.jpg",
                    ),
                    stories: [
                      Scaffold(
                        body: Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                "https://wallpaperaccess.com/full/135272.jpg",
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  StoryItem(
                    name: "FelicitySmoak",
                    thumbnail: const NetworkImage(
                      "https://wallpaperaccess.com/full/1916871.jpg",
                    ),
                    stories: [
                      Scaffold(
                        body: Container(
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                "https://wallpaperaccess.com/full/1916891.jpg",
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Divider(
                color: Colors.grey,
                thickness: 1.0,
              ),
              FutureBuilder(
                future: api.getPosts(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.7,
                      child: ListView.builder(
                          itemCount: api.posts.length,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 8.0),
                                      child: Text(
                                        api.posts[index].user_name,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Padding(
                                      padding: EdgeInsets.only(right: 8.0),
                                      child: Icon(Icons.menu),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  width: /*api.posts[index]
                                      .width,*/
                                      MediaQuery.of(context).size.width,
                                  height: /*api.posts[index]
                                      .height,*/
                                      MediaQuery.of(context).size.height * 0.5,
                                  //color: Colors.red,
                                  child: Image.network(
                                    api.posts[index].media,
                                    fit: BoxFit.fill,
                                    loadingBuilder: (BuildContext context,
                                        Widget child,
                                        ImageChunkEvent? loadingProgress) {
                                      if (loadingProgress == null) return child;
                                      return Center(
                                        child: CircularProgressIndicator(
                                          color: Colors.blueGrey,
                                          value: loadingProgress
                                                      .expectedTotalBytes !=
                                                  null
                                              ? loadingProgress
                                                      .cumulativeBytesLoaded /
                                                  loadingProgress
                                                      .expectedTotalBytes!
                                              : null,
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  child: Row(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(left: 8.0),
                                        child: Icon(MyFlutterApp.heart),
                                      ),
                                      SizedBox(width: 15),
                                      Icon(MyFlutterApp.bubble_chat),
                                      SizedBox(width: 15),
                                      Icon(MyFlutterApp.send),
                                      Spacer(),
                                      Padding(
                                        padding: EdgeInsets.only(right: 8.0),
                                        child: Icon(MyFlutterApp.bookmark),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 2),
                                      child: Text(
                                        api.posts[index].like_count.toString() +
                                            " likes",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Flexible(
                                      child: Container(
                                        margin: EdgeInsets.only(left: 2),
                                        child: RichText(
                                          text: TextSpan(
                                            style: DefaultTextStyle.of(context)
                                                .style,
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: api.posts[index]
                                                          .user_name +
                                                      " ",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              TextSpan(
                                                  text:
                                                      api.posts[index].caption),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                              ],
                            );
                          }),
                    );
                  } else if (snapshot.hasError) {
                    print('${snapshot.error}');
                    return Container();
                  }
                  return Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 200),
                      child: LoadingAnimationWidget.inkDrop(
                          color: Colors.green, size: 100),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
