import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'Dashboard.dart';
import 'package:page_transition/page_transition.dart';
import 'Profile.dart';


class LiveWatcher extends StatefulWidget {
  static String id = 'LiveWatcher';

  @override
  _LiveWatcherState createState() => _LiveWatcherState();
}

class _LiveWatcherState extends State<LiveWatcher> {


  final List<String> _listItem = [
    'assets/wiht background.png',
    'assets/wiht background.png',
    'assets/wiht background.png',
    'assets/wiht background.png',

  ];
  int currentTab = 2; // to keep track of active tab index
  final List<Widget> screens = [
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
  ]; // to store nested tabs
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = LiveWatcher();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        elevation: 4,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        title: Row(
          children: [
            Image.asset(
              'assets/without background.png',
              height: 80,
              width: 80,
            ),
            SizedBox(
              width: 15,
            ),
            Text('Live Watcher', style: TextStyle(
              color: Colors.black
            ),),
          ],
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: 36,
              height: 30,
              decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Center(child: Text("0")),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Image.asset('assets/Group 1926.png'),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        Navigator.pushReplacementNamed(context, 'dash');
                        currentScreen =
                            HomePage(); // if user taps on this dashboard tab will be active
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.home,
                          color: currentTab == 0 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(
                            color: currentTab == 0 ? Colors.blue : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        Navigator.pushReplacementNamed(context, 'search');

                        currentScreen =
                            HomePage(); // if user taps on this dashboard tab will be active
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.search,
                          color: currentTab == 1 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          'Search',
                          style: TextStyle(
                            color: currentTab == 1 ? Colors.blue : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),

              // Right Tab bar icons

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        Navigator.pushReplacementNamed(context, 'LiveWatcher');

                        currentScreen =
                            HomePage(); // if user taps on this dashboard tab will be active
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.videocam,
                          color: currentTab == 2 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          'Live',
                          style: TextStyle(
                            color: currentTab == 2 ? Colors.blue : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        Navigator.pushReplacementNamed(context, 'profile');
                        currentScreen =
                            ProfilePage(); // if user taps on this dashboard tab will be active
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.person,
                          color: currentTab == 3 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          'Profile',
                          style: TextStyle(
                            color: currentTab == 3 ? Colors.blue : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )

            ],
          ),
        ),
      ),

      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 220,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage('assets/images/one.jpg'),
                        fit: BoxFit.cover
                    )
                ),
                child: ListView(


                  children: <Widget>[


                    SizedBox(height: 15.0),


                    CarouselSlider(
                      height: 180.0,


                      enlargeCenterPage: true,


                      autoPlay: true,


                      aspectRatio: 16 / 9,


                      autoPlayCurve: Curves.fastOutSlowIn,


                      enableInfiniteScroll: true,


                      autoPlayAnimationDuration: Duration(milliseconds: 800),


                      viewportFraction: 0.8,




                      items: [


                        Container(


                          margin: EdgeInsets.all(5.0),


                          decoration: BoxDecoration(


                            borderRadius: BorderRadius.circular(10.0),


                            image: DecorationImage(


                              image: AssetImage('assets/blog.jpg'),


                              fit: BoxFit.cover,


                            ),


                          ),


                          child: Column(


                            mainAxisAlignment: MainAxisAlignment.center,


                            crossAxisAlignment: CrossAxisAlignment.center,


                            children: <Widget>[


                              Text(


                                'LOCATION',


                                style: TextStyle(


                                  color: Colors.white,


                                  fontWeight: FontWeight.bold,


                                  fontSize: 18.0,


                                ),


                              ),



                              Padding(


                                padding: const EdgeInsets.all(15.0),


                                child: Text(


                                  'Lorem Ipsum is simply dummy text use for printing and type script',


                                  style: TextStyle(


                                    color: Colors.white,


                                    fontSize: 15.0,


                                  ),


                                  textAlign: TextAlign.center,


                                ),


                              ),


                            ],


                          ),


                        ),



                        Container(


                          margin: EdgeInsets.all(5.0),


                          decoration: BoxDecoration(


                            borderRadius: BorderRadius.circular(10.0),


                            image: DecorationImage(


                              image: AssetImage('assets/blog.jpg'),


                              fit: BoxFit.cover,


                            ),


                          ),


                          child: Column(


                            mainAxisAlignment: MainAxisAlignment.center,


                            crossAxisAlignment: CrossAxisAlignment.center,


                            children: <Widget>[


                              Text(


                                'LOCATION',


                                style: TextStyle(


                                  color: Colors.white,


                                  fontWeight: FontWeight.bold,


                                  fontSize: 18.0,


                                ),


                              ),



                              Padding(


                                padding: const EdgeInsets.all(15.0),


                                child: Text(


                                  'Lorem Ipsum is simply dummy text use for printing and type script',


                                  style: TextStyle(


                                    color: Colors.white,


                                    fontSize: 15.0,


                                  ),


                                  textAlign: TextAlign.center,


                                ),


                              ),


                            ],


                          ),


                        ),



                        Container(


                          margin: EdgeInsets.all(5.0),


                          decoration: BoxDecoration(


                            borderRadius: BorderRadius.circular(10.0),


                            image: DecorationImage(


                              image: AssetImage('assets/blog.jpg'),


                              fit: BoxFit.cover,


                            ),


                          ),


                          child: Column(


                            mainAxisAlignment: MainAxisAlignment.center,


                            crossAxisAlignment: CrossAxisAlignment.center,


                            children: <Widget>[


                              Text(


                                'LOCATION',


                                style: TextStyle(


                                  color: Colors.white,


                                  fontWeight: FontWeight.bold,


                                  fontSize: 18.0,


                                ),


                              ),



                              Padding(


                                padding: const EdgeInsets.all(15.0),


                                child: Text(


                                  'Lorem Ipsum is simply dummy text use for printing and type script',


                                  style: TextStyle(


                                    color: Colors.white,


                                    fontSize: 15.0,


                                  ),


                                  textAlign: TextAlign.center,


                                ),


                              ),


                            ],


                          ),


                        ),


                      ],


                    ),


                  ],


                ),
              ),
              Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: _listItem.map((item) => Card(
                      color: Colors.transparent,
                      elevation: 0,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage(item),
                                fit: BoxFit.cover
                            )
                        ),
                        child: Transform.translate(
                          offset: Offset(30, 65),
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 63),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),

                            ),
                            child: Row(

                              children: <Widget>[
                                Image.asset('assets/Group 1933.png',
                                  width: 30,
                                ),
                                SizedBox(width: 10),
                                Image.asset('assets/Group 1931.png',
                                  width: 30,),
                                SizedBox(width: 10),

                                Image.asset('assets/Group 1932.png',width: 30,),

                                // RatingBar(rating: items[index].rating),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )).toList(),
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}