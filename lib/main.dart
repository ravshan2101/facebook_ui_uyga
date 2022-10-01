import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text(
          'facebook',
          style: TextStyle(
              fontSize: 30, color: Colors.blue, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.grey,
            iconSize: 30,
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.camera_alt,
                color: Colors.grey,
                size: 30,
              ))
        ],
      ),
      body: Container(
        child: ListView(
          children: [
            Container(
              height: 100,
              padding: EdgeInsets.only(top: 10),
              color: Colors.black,
              child: Column(
                children: [
                  Expanded(
                      child: Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage:
                            AssetImage('assets/images/user_5.jpeg'),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 10, right: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(width: 1, color: Colors.grey)),
                          child: Container(
                            padding: EdgeInsets.only(left: 10),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'What\'s is on your mind?',
                                  hintStyle: TextStyle(color: Colors.grey)),
                            ),
                          ),
                        ),
                      )
                    ],
                  )),
                  Expanded(
                      child: Container(
                    padding: EdgeInsets.only(left: 40, right: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.video_call,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Live',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                        Container(
                          width: 1,
                          color: Colors.grey,
                          margin: EdgeInsets.only(top: 8, bottom: 8),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.photo,
                              color: Colors.green,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Photo',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                        Container(
                          width: 1,
                          color: Colors.grey,
                          margin: EdgeInsets.only(top: 8, bottom: 8),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.red,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Check in',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        )
                      ],
                    ),
                  ))
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              color: Colors.black,
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _makeItem(
                      userImage: 'assets/images/story_5.jpeg',
                      userProfil: 'assets/images/user_5.jpeg',
                      userName: 'User Five'),
                  _makeItem(
                      userImage: 'assets/images/story_4.jpeg',
                      userProfil: 'assets/images/user_4.jpeg',
                      userName: 'User Four'),
                  _makeItem(
                      userImage: 'assets/images/story_3.jpeg',
                      userProfil: 'assets/images/user_3.jpeg',
                      userName: 'User Three'),
                  _makeItem(
                      userImage: 'assets/images/story_2.jpeg',
                      userProfil: 'assets/images/user_2.jpeg',
                      userName: 'User Two'),
                  _makeItem(
                      userImage: 'assets/images/story_1.jpeg',
                      userProfil: 'assets/images/user_1.jpeg',
                      userName: 'User One')
                ],
              ),
            ),
            _makeRasm('assets/images/user_2.jpeg', 'User Two', '1 hr ago',
                'assets/images/story_2.jpeg', 'assets/images/story_4.jpeg'),
            _makeRasm('assets/images/user_3.jpeg', 'User Three', '1 hr ago',
                'assets/images/story_3.jpeg', 'assets/images/story_5.jpeg'),
            _makeRasm('assets/images/user_3.jpeg', 'User Four', '1 hr ago',
                'assets/images/story_4.jpeg', 'assets/images/story_5.jpeg'),
            _makeRasm('assets/images/user_4.jpeg', 'User Five', '1 hr ago',
                'assets/images/story_2.jpeg', 'assets/images/story_4.jpeg'),
            _makeRasm('assets/images/user_2.jpeg', 'User Six', '1 hr ago',
                'assets/images/story_2.jpeg', 'assets/images/story_4.jpeg')
          ],
        ),
      ),
    );
  }
}

Widget _makeRasm(String? userImage, userName, time, userProfil1, userProfil2) {
  return Container(
    color: Colors.black,
    padding: EdgeInsets.only(right: 10, left: 10),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(userImage!),
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          userName,
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          time,
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ))
              ],
            ),
            Icon(
              Icons.more_horiz,
              color: Colors.grey,
            )
          ],
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(
            'All the Loream Ipsum generators on the Internet tent to repeat predefined.',
            style:
                TextStyle(color: Colors.grey, letterSpacing: 1, fontSize: 14),
          ),
        ),
        Container(
          height: 240,
          child: Row(
            children: [
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: AssetImage(userProfil1))),
              )),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: AssetImage(userProfil2))),
              )),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  _makelike(),
                  Transform.translate(
                    offset: Offset(-5, 0),
                    child: _makelove(),
                  ),
                  Text(
                    '2.5K',
                    style: TextStyle(color: Colors.grey.shade700),
                  )
                ],
              ),
              Text(
                '400 Comments',
                style: TextStyle(color: Colors.grey.shade700),
              )
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          padding: EdgeInsets.only(right: 10, left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.thumb_up),
                    color: Colors.blue,
                    iconSize: 20,
                  ),
                  Text(
                    'Like',
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  )
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.message),
                    color: Colors.blue,
                    iconSize: 20,
                  ),
                  Text(
                    'Messeg',
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  )
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.comment),
                    color: Colors.blue,
                    iconSize: 20,
                  ),
                  Text(
                    'Comment',
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  )
                ],
              )
            ],
          ),
        )
      ],
    ),
  );
}

Widget _makelike() {
  return CircleAvatar(
    radius: 14,
    backgroundColor: Colors.white,
    child: Container(
        height: 25,
        width: 25,
        decoration:
            const BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
        child: Icon(
          Icons.thumb_up,
          size: 12,
          color: Colors.white,
        )),
  );
}

Widget _makelove() {
  return CircleAvatar(
    radius: 14,
    backgroundColor: Colors.white,
    child: Container(
        height: 25,
        width: 25,
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.red),
        child: Icon(
          Icons.favorite,
          size: 12,
          color: Colors.white,
        )),
  );
}

Widget _makeItem({
  required userImage,
  required userProfil,
  required userName,
}) {
  return AspectRatio(
    aspectRatio: 1.3 / 2,
    child: Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(userImage))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: CircleAvatar(
              radius: 24,
              child: CircleAvatar(
                radius: 21,
                backgroundImage: AssetImage(userProfil),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              userName,
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    ),
  );
}
