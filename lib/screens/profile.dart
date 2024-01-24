import '../data/api.dart';
import '../presentation/my_flutter_app_icons.dart';
import '../utils/imports.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  API api = new API();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Row(
          children: [
            Icon(Icons.lock),
            Text(
              api.profile.username,
              style: GoogleFonts.getFont('Quintessential')
                  .copyWith(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: const [
          Icon(MyFlutterApp.plus),
          SizedBox(
            width: 30,
          ),
          Icon(Icons.menu),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Container(
        color: Colors.black87,
        child: Column(
          children: [
            Stories(displayProgress: true, storyItemList: [
              // First group of stories
              StoryItem(
                  name: "api.profile.username",
                  thumbnail: const NetworkImage(
                    "https://assets.materialup.com/uploads/82eae29e-33b7-4ff7-be10-df432402b2b6/preview",
                  ),
                  stories: [])
            ])
          ],
        ),
      ),
    );
  }
}
