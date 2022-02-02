import 'package:facebook_ui/pages/contents.dart';
import 'package:facebook_ui/pages/home_page_dark.dart';
import "package:flutter/material.dart";

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String id = "/home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Dark.isDark ? Colors.grey.shade800 : Colors.grey.shade300,
      appBar: appBar(),
      body: ListView(
        children: [
          /// * header
          Container(
            color: Dark.isDark ? Colors.black : Colors.white,
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            height: 120,
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        width: 45,
                        height: 45,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/images/user_1.jpeg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          height: 46,
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(23),
                            border: Border.all(
                              width: 1,
                              color: Colors.grey,
                            ),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "What's on your mind?",
                              border: InputBorder.none,
                              hintStyle: TextStyle(color: Colors.grey.shade700),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.video_call,
                              color: Colors.red,
                            ),
                            const SizedBox(
                              width: 5
                            ),
                            Text("Live", style: TextStyle(color: Dark.isDark ? Colors.grey : Colors.black),),
                          ],
                        ),
                      ),
                      Container(
                        width: 1,
                        margin: const EdgeInsets.only(top: 14, bottom: 14),
                        color: Colors.grey.shade300,
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:  [
                            const Icon(
                              Icons.photo,
                              color: Colors.green,
                            ),
                            const SizedBox(
                              width: 5
                            ),
                            Text("Photo", style: TextStyle(color: Dark.isDark ? Colors.grey : Colors.black),),
                          ],
                        ),
                      ),
                      Container(
                        width: 1,
                        margin: const EdgeInsets.only(top: 14, bottom: 14),
                        color: Colors.grey.shade300,
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:  [
                            const Icon(
                              Icons.location_on,
                              color: Colors.red,
                            ),
                            const SizedBox(
                              width: 5
                            ),
                            Text("Check In", style: TextStyle(color: Dark.isDark ? Colors.grey : Colors.black),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          /// * stores
          Container(
            margin: const EdgeInsets.only(top: 10),
            height: 200,
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            color: Dark.isDark ? Colors.black : Colors.white,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                const SizedBox(width: 10),
                makeStory(
                  storyImage: 'assets/images/story_1.jpeg',
                  userImage: 'assets/images/user_1.jpeg',
                  userName: 'User One',
                ),
                makeStory(
                  storyImage: 'assets/images/story_2.jpeg',
                  userImage: 'assets/images/user_2.jpeg',
                  userName: 'User Two',
                ),
                makeStory(
                  storyImage: 'assets/images/story_3.jpeg',
                  userImage: 'assets/images/user_3.jpeg',
                  userName: 'User Three',
                ),
                makeStory(
                  storyImage: 'assets/images/story_4.jpeg',
                  userImage: 'assets/images/user_4.jpeg',
                  userName: 'User Four',
                ),
                makeStory(
                  storyImage: 'assets/images/story_5.jpeg',
                  userImage: 'assets/images/user_5.jpeg',
                  userName: 'User Five',
                ),
              ],
            ),
          ),

          /// * contents
           MakeContents(
            userName: 'User One',
            userImage: 'assets/images/user_1.jpeg',
            feedTime: '1 hr ago',
            feedText:
                'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
            feedImage: 'assets/images/story_1.jpeg',
          ),
           MakeContents(
            userName: 'User One',
            userImage: 'assets/images/user_1.jpeg',
            feedTime: '1 hr ago',
            feedText:
            'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
            feedImage: 'assets/images/story_1.jpeg',
          ),
           MakeContents(
            userName: 'User One',
            userImage: 'assets/images/user_1.jpeg',
            feedTime: '1 hr ago',
            feedText:
            'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
            feedImage: 'assets/images/story_1.jpeg',
          ),
        ],
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: Dark.isDark ? Colors.black : Colors.white,
      title: const Text(
        "facebook",
        style: TextStyle(
          color: Colors.blueAccent,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            color: Colors.grey.shade800,
          ),
        ),
        IconButton(
          onPressed: () {
            setState(() {
              Dark.isDark = !Dark.isDark;
            });
          },
          icon: Icon(
            Icons.camera_alt,
            color: Colors.grey.shade800,
          ),
        ),
      ],
      elevation: 0,
    );
  }

  Widget makeStory({storyImage, userImage, userName}) {
    return AspectRatio(
      aspectRatio: 2 / 3,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(storyImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.1),
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.blue,
                    width: 2,
                  ),
                  image: DecorationImage(
                    image: AssetImage(userImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                userName,
                style:  const TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
