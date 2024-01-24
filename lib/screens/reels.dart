import '../utils/imports.dart';

class Reels extends StatefulWidget {
  const Reels({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _ReelsState createState() => _ReelsState();
}

class _ReelsState extends State<Reels> implements VideoNewFeedApi<VideoInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VideoNewFeedScreen<VideoInfo>(
        api: this,
      ),
    );
  }

  @override
  Future<List<VideoInfo>> getListVideo() {
    return Future.value([
      VideoInfo(
          userName: "Bobby",
          liked: true,
          songName: "Yea boi",
          url:
              'https://vod-progressive.akamaized.net/exp=1673687895~acl=%2Fvimeo-prod-skyfire-std-us%2F01%2F394%2F21%2F526972171%2F2475851044.mp4~hmac=f2ee7ffa627ad4de050360f32d60e2705c127b3683049015cc2204fda24d46a9/vimeo-prod-skyfire-std-us/01/394/21/526972171/2475851044.mp4'),
      VideoInfo(
          userName: "Megan",
          liked: true,
          songName: "Vibes",
          url:
              'https://vod-progressive.akamaized.net/exp=1673688186~acl=%2Fvimeo-prod-skyfire-std-us%2F01%2F862%2F22%2F554310916%2F2622215020.mp4~hmac=ebe9b410b3e138615c138f952b8af32f440f7ec914c4d6f663583fb41514fd84/vimeo-prod-skyfire-std-us/01/862/22/554310916/2622215020.mp4'),
      VideoInfo(
          userName: "Harry",
          liked: true,
          songName: "This is it",
          url:
              'https://vod-progressive.akamaized.net/exp=1673688227~acl=%2Fvimeo-prod-skyfire-std-us%2F01%2F1007%2F25%2F630035877%2F2900161419.mp4~hmac=c1c1cdac40cb5b21551aa746f9bf13ac9746017d994f93a03c6fc8f9cf12fbb2/vimeo-prod-skyfire-std-us/01/1007/25/630035877/2900161419.mp4'),
      VideoInfo(
          userName: "Michael",
          liked: true,
          songName: "Let's go",
          url:
              'https://vod-progressive.akamaized.net/exp=1673688290~acl=%2Fvimeo-prod-skyfire-std-us%2F01%2F2105%2F24%2F610525497%2F2848301680.mp4~hmac=56f650b398fb1c18b80b99540979182d530e410fb97817c48b2a5ad76101fa79/vimeo-prod-skyfire-std-us/01/2105/24/610525497/2848301680.mp4'),
      VideoInfo(
          userName: "Lisa",
          liked: true,
          songName: "Quality stuff",
          url:
              'https://vod-progressive.akamaized.net/exp=1673688337~acl=%2Fvimeo-prod-skyfire-std-us%2F01%2F3554%2F23%2F592772055%2F2793316876.mp4~hmac=63c1822be5abbda900e8eb4c3b0f19325772974e1c52babb9b96823937d999c9/vimeo-prod-skyfire-std-us/01/3554/23/592772055/2793316876.mp4'),
      VideoInfo(
          userName: "Rachel",
          liked: true,
          songName: "Love it!",
          url:
              'https://vod-progressive.akamaized.net/exp=1673688399~acl=%2Fvimeo-prod-skyfire-std-us%2F01%2F2955%2F19%2F489779797%2F2198537067.mp4~hmac=33705ac94fbbc727599609067b20cf92eb127e587c7f7a9a3b140610efd0fc5c/vimeo-prod-skyfire-std-us/01/2955/19/489779797/2198537067.mp4')
    ]);
  }

  @override
  Future<List<VideoInfo>> loadMore(List<VideoInfo> currentList) {
    return Future.value([
      VideoInfo(
          userName: "quochuynh96 load more",
          liked: true,
          songName: "Đưa tay lên nào, mãi bên nhau bạn nhé!",
          url:
              'https://vod-progressive.akamaized.net/exp=1673688399~acl=%2Fvimeo-prod-skyfire-std-us%2F01%2F2955%2F19%2F489779797%2F2198537067.mp4~hmac=33705ac94fbbc727599609067b20cf92eb127e587c7f7a9a3b140610efd0fc5c/vimeo-prod-skyfire-std-us/01/2955/19/489779797/2198537067.mp4'),
      VideoInfo(
          userName: "quochuynh96",
          liked: true,
          songName: "Đưa tay lên nào, mãi bên nhau bạn nhé!",
          url:
              'https://vod-progressive.akamaized.net/exp=1673688465~acl=%2Fvimeo-prod-skyfire-std-us%2F01%2F810%2F24%2F604050824%2F2830063599.mp4~hmac=557d264c052e6294825533d3d2305853b1a87939cce506ff5a33c162a49830d6/vimeo-prod-skyfire-std-us/01/810/24/604050824/2830063599.mp4'),
      VideoInfo(
          userName: "quochuynh96",
          liked: true,
          songName: "Đưa tay lên nào, mãi bên nhau bạn nhé!",
          url:
              'https://vod-progressive.akamaized.net/exp=1673688520~acl=%2Fvimeo-prod-skyfire-std-us%2F01%2F4315%2F17%2F446578885%2F1958912666.mp4~hmac=9aff36524e2560fafa638d60678b582bde2a7c2b2794cf03c4cc261f4eac13f8/vimeo-prod-skyfire-std-us/01/4315/17/446578885/1958912666.mp4'),
      VideoInfo(
          userName: "quochuynh96",
          liked: true,
          songName: "Đưa tay lên nào, mãi bên nhau bạn nhé!",
          url:
              'https://vod-progressive.akamaized.net/exp=1673688615~acl=%2Fvimeo-prod-skyfire-std-us%2F01%2F2347%2F22%2F561738749%2F2656450930.mp4~hmac=53ae88046edaa8427bac14607f93c01d16a62f7f814ee41bbdbecbcdb2ae2951/vimeo-prod-skyfire-std-us/01/2347/22/561738749/2656450930.mp4'),
      VideoInfo(
          userName: "quochuynh96",
          liked: true,
          songName: "Đưa tay lên nào, mãi bên nhau bạn nhé!",
          url:
              'https://vod-progressive.akamaized.net/exp=1673688682~acl=%2Fvimeo-prod-skyfire-std-us%2F01%2F1511%2F20%2F507558892%2F2331724581.mp4~hmac=cba3fec636149018360ec594c007b91f14aade71ba89f748cee5d4ce7a86dee7/vimeo-prod-skyfire-std-us/01/1511/20/507558892/2331724581.mp4'),
      VideoInfo(
          userName: "quochuynh96",
          liked: true,
          songName: "Đưa tay lên nào, mãi bên nhau bạn nhé!",
          url:
              'https://vod-progressive.akamaized.net/exp=1673688682~acl=%2Fvimeo-prod-skyfire-std-us%2F01%2F1511%2F20%2F507558892%2F2331724581.mp4~hmac=cba3fec636149018360ec594c007b91f14aade71ba89f748cee5d4ce7a86dee7/vimeo-prod-skyfire-std-us/01/1511/20/507558892/2331724581.mp4')
    ]);
  }
}
