import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int id = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Chats"),
        backgroundColor: Colors.black,
        centerTitle: true,
        leading: Icon(
          Icons.menu,
          color: Colors.blue,
        ),
        actions: [Icon(Icons.edit, color: Colors.blue)],
      ),
      body: Column(
        children: [
          // search box
          Container(
            padding: const EdgeInsets.all(15),
            margin: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
                color: Colors.grey.shade800,
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: const [
                Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Search",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.normal),
                )
              ],
            ),
          ),

          // list of users
          SizedBox(
            height: 100,
            child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      children: [
                        // image
                        Container(
                          height: 48,
                          width: 48,
                          margin: const EdgeInsets.only(left: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      "https://www.incimages.com/uploaded_files/image/1920x1080/getty_481292845_77896.jpg"))),
                        ),

                        Text(
                          "Yousef\nsalah",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  );
                }),
          ),

          // list of chats
          Expanded(
              child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                child: Row(
                  children: [
                    Container(
                      height: 48,
                      width: 48,
                      margin: const EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://www.incimages.com/uploaded_files/image/1920x1080/getty_481292845_77896.jpg"))),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        children: const [
                          Text(
                            "Yousef salah",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Hi how are you ?",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          )),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){
                    id = 1;
                  },
                  child: Column(
                    children: [
                      Icon(
                        Icons.message,
                        color: id == 1 ? Colors.blue: Colors.grey,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Chats",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: (){
                    id =2 ;
                  },
                  child: Column(
                    children:  [
                      Icon(
                        Icons.videocam,
                        color: id == 2 ? Colors.blue: Colors.grey,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Calls",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: (){
                    id = 3;
                  },
                  child: Column(
                    children: [
                      Icon(
                        Icons.people,
                        color: id == 3 ? Colors.blue: Colors.grey
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "People",
                        style: TextStyle(color: id == 3 ? Colors.blue: Colors.grey,),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: (){
                    id = 4;
                  },
                  child: Column(
                    children: [
                      Icon(
                        Icons.web_stories,
                        color: id == 4 ? Colors.blue: Colors.grey,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Stories",
                        style: TextStyle(color: id ==4 ? Colors.blue: Colors.grey,),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
