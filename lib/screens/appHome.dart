import '../presentation/my_flutter_app_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/imports.dart';

class AppHome extends StatefulWidget {
  const AppHome({Key? key}) : super(key: key);

  @override
  _AppHomeState createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    Home(),
    Explore(),
    Reels(
      title: '',
    ),
    Notifications(),
    Profile()
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
              canvasColor: Colors.black87,
              //primaryColor: Colors.red,
              textTheme: Theme.of(context)
                  .textTheme
                  .copyWith(caption: new TextStyle(color: Colors.white))),
          child: BottomNavigationBar(
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.white,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(MyFlutterApp.home),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(MyFlutterApp.search),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(MyFlutterApp.icons8_instagram_reels),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(MyFlutterApp.heart),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_off_rounded),
                label: '',
              ),
            ],
          ),
        ));
  }
}
