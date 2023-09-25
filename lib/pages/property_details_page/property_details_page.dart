import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:property_rents/themes.dart';
import 'package:video_player/video_player.dart';
// import 'package:video_player/video_player.dart';

class PropertyDetailsPage extends StatefulWidget {
  PropertyDetailsPage({Key? key}) : super(key: key);

  static final List<String> imgList = [
    'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

  @override
  State<PropertyDetailsPage> createState() => _PropertyDetailsPageState();
}

// enum UrlType { IMAGE, VIDEO, UNKNOWN }

// void main() async {
//   var imageUrl =
//       'https://firebasestorage.googleapis.com/v0/b/myAppCodeNameForFirebase.appspot.com/o/Posts%20Pictures%2Fiufri095620200814.jpg?alt=media&token=89b6c22f-b8dd-4cff-9395-f53fc0808824';
//   var videoUrl =
//       'https://firebasestorage.googleapis.com/v0/b/myAppCodeNameForFirebase.appspot.com/o/Posts%20Pictures%2Fiufri095620200814.mp4?alt=media&token=89b6c22f-b8dd-4cff-9395-f53fc0808824';

//   print(getUrlType(imageUrl));
//   print(getUrlType(videoUrl));
// }

Object getUrlType(String url) {
  Uri uri = Uri.parse(url);
  String typeString = uri.path.substring(uri.path.length - 3).toLowerCase();
  // if (typeString == "jpg") {
  //   return UrlType.IMAGE;
  // }
  // if (typeString == "mp4") {
  //   return UrlType.VIDEO;
  // } else {
  //   return UrlType.UNKNOWN;
  // }

  // if (typeString == "jpg") {
  //   return UrlType.IMAGE;
  // }
  if (typeString == "mp4") {
    // return UrlType.VIDEO;
    return 'video';
  } else {
    // return UrlType.UNKNOWN;
    return 'image';
  }
}

class _PropertyDetailsPageState extends State<PropertyDetailsPage> {
  late String indexImage = '1';

  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    // _controller = VideoPlayerController.network(
    //     'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
    _controller =
        VideoPlayerController.network(PropertyDetailsPage.imgList.first)
          ..initialize().then((_) {
            // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
            setState(() {});
          });
  }

  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              CarouselSlider(
                items: PropertyDetailsPage.imgList
                    .asMap()
                    .entries
                    .map((fileImage) {
                  if (getUrlType(fileImage.value) == 'video') {
                    return _controller.value.isInitialized
                        ? AspectRatio(
                            aspectRatio: _controller.value.aspectRatio,
                            child: VideoPlayer(_controller),
                          )
                        : Container();
                  } else {
                    return Image.network(
                      fileImage.value,
                      fit: BoxFit.cover,
                    );
                  }
                }).toList(),
                options: CarouselOptions(
                  pageSnapping: true,
                  viewportFraction: 1,
                  height: 269,
                  onPageChanged: (index, reason) {
                    setState(() {
                      indexImage = (index + 1).toString();
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 46, left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.white),
                      child: IconButton(
                          splashRadius: 20.0,
                          padding: const EdgeInsets.all(0.0),
                          constraints: const BoxConstraints(),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back_ios_rounded,
                            size: 18,
                            color: blueDarkColor,
                          )),
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.white),
                      child: IconButton(
                          splashRadius: 20.0,
                          padding: const EdgeInsets.all(0.0),
                          constraints: const BoxConstraints(),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.all_inclusive_rounded,
                            size: 18,
                            color: blueDarkColor,
                          )),
                    ),
                  ],
                ),
              ),
              Positioned(
                // height: 269,
                bottom: 110,
                right: MediaQuery.of(context).size.width * 0.45,
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      _controller.value.isPlaying
                          ? _controller.pause()
                          : _controller.play();
                    });
                  },
                  icon: Icon(
                    _controller.value.isPlaying
                        ? Icons.pause_circle_outline_rounded
                        : Icons.play_circle_outline_rounded, size: 50,color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                right: 10,
                child: Container(
                  width: 58,
                  height: 24,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white),
                  child: Center(
                    child: Text(
                      '$indexImage / ' +
                          PropertyDetailsPage.imgList.length.toString(),
                      style: blueDarkTextStyle.copyWith(
                          fontFamily: "roboto", fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              )
            ]),
          ],
        ),
      ),
    );
  }
}
