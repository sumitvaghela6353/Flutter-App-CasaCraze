// import '/flutter_flow/flutter_flow_theme.dart';
// import '/flutter_flow/flutter_flow_swipeable_stack.dart';
// import '/flutter_flow/flutter_flow_util.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';
// import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
// import 'package:swipeable_card_stack/swipeable_card_stack.dart';
import 'Homepage_model.dart';
export 'Homepage_model.dart';
import 'package:furniture_ar/prod1.dart';

import 'Prod1.dart';
import 'Profilepage.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  set _currentIndex(int _currentIndex) {}

  HomePageModel createModel(BuildContext context, HomePageModel Function() p1) {
    return HomePageModel();
  }

  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page'),
    // Text('Search Page'),
    Text('Profile Page'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
  }

  // void updateList(String value){

  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // var scaffold = Scaffold(
        key: scaffoldKey,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppBar(
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
            // Color.fromARGB(255, 62, 56, 139),
            automaticallyImplyLeading: false,
            actions: const [],
            flexibleSpace: const FlexibleSpaceBar(
              title: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                child: Text(
                  'CasaCraze',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromARGB(255, 24, 22, 22),
                    fontFamily: 'poppinsL',
                    fontSize: 50,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              centerTitle: true,
              expandedTitleScale: 1.0,
            ),
            elevation: 1,
          ),
        ),
        body: SingleChildScrollView(
          child: GestureDetector(
            onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.2, 0.05),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color.fromARGB(255, 231, 229, 240),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none),
                        hintText: "eg : Brown couch",
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.2, 0.05),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5, 5, 10, 5),
                    // padding: EdgeInsetsDirectional.fromSTEB(5, 5, 10, 5),
                    child: GradientText(
                      'Elevate Your\nSpace Elevate \nYour Life',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: 'PoppinsB',
                        color: Color(0xFF2D0B0B),
                        fontSize: 45,
                      ),
                      colors: [Color(0xFF3958EF), Color(0xFF39D0D2)],
                      gradientType: GradientType.radial,
                      radius: 1,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 3, 0, 2),
                  child: Wrap(
                    spacing: 0,
                    runSpacing: 0,
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    direction: Axis.horizontal,
                    runAlignment: WrapAlignment.start,
                    verticalDirection: VerticalDirection.down,
                    clipBehavior: Clip.none,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 10),
                        child: Container(
                          width: double.infinity,
                          height: 200,
                          decoration: BoxDecoration(),
                          child: Container(
                            width: double.infinity,
                            height: 500,
                            child: Stack(
                              children: [
                                PageView(
                                  controller: _model.pageViewController ??=
                                      PageController(initialPage: 0),
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image.network(
                                        'https://rukminim1.flixcart.com/image/416/416/j1wgjgw0/sofa-sectional/k/y/3/beige-na-philly-1-durian-beige-original-imaetdhkqqnxxxhq.jpeg?q=70',
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.fitHeight,
                                      ),
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image.network(
                                        'https://rukminim1.flixcart.com/image/416/416/k4fx3m80/office-study-chair/s/w/v/mdf-medium-density-fiber-vc-003-vizolt-original-imafncdnu8hfwfzc.jpeg?q=70',
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.fitHeight,
                                      ),
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image.network(
                                        'https://rukminim1.flixcart.com/image/416/416/ky90scw0/curtain/q/n/h/geometric-panel-hs2pc001423wd-window-eyelet-home-sizzler-original-imagajyytmurwrm2.jpeg?q=70',
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.none,
                                      ),
                                    ),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image.network(
                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6p2u6EZBQnGIvcmyZIWe--746wg2nYaRXHQ&usqp=CAU',
                                        width: 100,
                                        height: 100,
                                        fit: BoxFit.fitHeight,
                                      ),
                                    ),
                                  ],
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0, 1),
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            5, 5, 5, 5),
                                    child: smooth_page_indicator
                                        .SmoothPageIndicator(
                                      controller: _model.pageViewController ??=
                                          PageController(initialPage: 0),
                                      count: 4,
                                      axisDirection: Axis.horizontal,
                                      onDotClicked: (i) {
                                        _model.pageViewController!
                                            .animateToPage(
                                          i,
                                          duration:
                                              const Duration(milliseconds: 500),
                                          curve: Curves.ease,
                                        );
                                      },
                                      effect: const smooth_page_indicator
                                          .ExpandingDotsEffect(
                                        expansionFactor: 2,
                                        spacing: 8,
                                        radius: 16,
                                        dotWidth: 10,
                                        dotHeight: 10,
                                        dotColor: Color(0xFF9E9E9E),
                                        activeDotColor: Color(0xFF39D0D2),
                                        paintStyle: PaintingStyle.fill,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                // Generated code for this Row Widget...

                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10, 0, 10, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/prod1');
                                    },
                                    child: Container(
                                      width: 162,
                                      height: 164,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFE7E7F3),
                                        boxShadow: const [
                                          BoxShadow(
                                            blurRadius: 10,
                                            color: Color(0x33000000),
                                            offset: Offset(0, 4),
                                          )
                                        ],
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(3),
                                            child: Image.network(
                                              'https://rukminim1.flixcart.com/image/416/416/k5lcvbk0/sofa-sectional/e/p/z/black-imitation-leather-berry-55003-a-3-durian-eerie-black-original-imafz8jdswkzemga.jpeg?q=70',
                                              width: 155.5,
                                              height: 135,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 3, 0, 2),
                                            child: Text(
                                              '3 Seat Soft Couch',
                                              style: TextStyle(),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/prod2');
                                    },
                                    child: Container(
                                      width: 162,
                                      height: 164,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFE7E7F3),
                                        boxShadow: const [
                                          BoxShadow(
                                            blurRadius: 10,
                                            color: Color(0x33000000),
                                            offset: Offset(0, 4),
                                          )
                                        ],
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(3),
                                            child: Image.network(
                                              'https://m.media-amazon.com/images/I/71mKwaKglhL._SL1500_.jpg',
                                              width: 155.5,
                                              height: 135,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 3, 0, 2),
                                            child: Text(
                                              'Office Chair',
                                              style: TextStyle(),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10, 10, 10, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/prod1');
                                    },
                                    child: Container(
                                      width: 162,
                                      height: 164,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFE7E7F3),
                                        boxShadow: const [
                                          BoxShadow(
                                            blurRadius: 10,
                                            color: Color(0x33000000),
                                            offset: Offset(0, 4),
                                          )
                                        ],
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(3),
                                            child: Image.network(
                                              'https://media.istockphoto.com/id/1252414324/photo/green-sofa-on-white-background-with-a-plaid-and-pillow-3d-rendering.jpg?b=1&s=612x612&w=0&k=20&c=dHq8LV_Il2e9oeukNwqGvnq5mZUBSUU3mf-tDBMDSZs=',
                                              width: 155.5,
                                              height: 135,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 3, 0, 2),
                                            child: Text(
                                              'Modern 2 seat Couch',
                                              style: TextStyle(),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/prod1');
                                    },
                                    child: Container(
                                      width: 162,
                                      height: 164,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFE7E7F3),
                                        boxShadow: const [
                                          BoxShadow(
                                            blurRadius: 10,
                                            color: Color(0x33000000),
                                            offset: Offset(0, 4),
                                          )
                                        ],
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(3),
                                            child: Image.network(
                                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaoa2AopqB78Gl_XjkKnOw1ne9b6km7IG3jA&usqp=CAU',
                                              width: 155.5,
                                              height: 135,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 3, 0, 2),
                                            child: Text(
                                              'Wall Mirror',
                                              style: TextStyle(),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10, 10, 10, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/prod1');
                                    },
                                    child: Container(
                                      width: 162,
                                      height: 164,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFE7E7F3),
                                        boxShadow: const [
                                          BoxShadow(
                                            blurRadius: 10,
                                            color: Color(0x33000000),
                                            offset: Offset(0, 4),
                                          )
                                        ],
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(3),
                                            child: Image.network(
                                              'https://media.istockphoto.com/id/1334037436/photo/wooden-chair-isolated-on-white-with-clipping-path.jpg?s=612x612&w=0&k=20&c=ToZrdNt8mNvaPLEuMg9Pj6u-5etxNwcIUzVOIF088yM=',
                                              width: 155.5,
                                              height: 133,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 3, 0, 2),
                                            child: Text(
                                              'Wooden Chair',
                                              style: TextStyle(),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/prod1');
                                    },
                                    child: Container(
                                      width: 162,
                                      height: 164,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFE7E7F3),
                                        boxShadow: const [
                                          BoxShadow(
                                            blurRadius: 10,
                                            color: Color(0x33000000),
                                            offset: Offset(0, 4),
                                          )
                                        ],
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(3),
                                            child: Image.network(
                                              'https://cdn.shopify.com/s/files/1/0408/7365/6486/products/04_dbe7acab-621e-4cc1-981d-411aa8412270_1024x1024@2x.jpg?v=1679134816',
                                              width: 155.5,
                                              height: 135,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 3, 0, 2),
                                            child: Text(
                                              'Home/Office Table',
                                              style: TextStyle(),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10, 10, 10, 10),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/prod1');
                                    },
                                    child: Container(
                                      width: 162,
                                      height: 164,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFE7E7F3),
                                        boxShadow: const [
                                          BoxShadow(
                                            blurRadius: 10,
                                            color: Color(0x33000000),
                                            offset: Offset(0, 4),
                                          )
                                        ],
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(3),
                                            child: Image.network(
                                              'https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/41KCIRcoRWL.jpg',
                                              width: 155.5,
                                              height: 135,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 3, 0, 2),
                                            child: Text(
                                              'Home Carpet',
                                              style: TextStyle(),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/prod1');
                                    },
                                    child: Container(
                                      width: 162,
                                      height: 164,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFE7E7F3),
                                        boxShadow: const [
                                          BoxShadow(
                                            blurRadius: 10,
                                            color: Color(0x33000000),
                                            offset: Offset(0, 4),
                                          )
                                        ],
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(3),
                                            child: Image.network(
                                              'https://www.heritageartscochin.com/image/cache/catalog/Coffee%20Table/Six%20Legged%20Round%20Coffee%20Table%20-%20Tall/4-550x550w-550x550.jpg',
                                              width: 155.5,
                                              height: 135,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 3, 0, 2),
                                            child: Text(
                                              'Six legged round table',
                                              style: TextStyle(),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                // const Divider(
                //   thickness: 6,
                //   color: Color(0xFF5D1212),
                // ),
                // Padding(
                //   padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                //   child: Wrap(
                //     spacing: 0,
                //     runSpacing: 0,
                //     alignment: WrapAlignment.start,
                //     crossAxisAlignment: WrapCrossAlignment.start,
                //     direction: Axis.horizontal,
                //     runAlignment: WrapAlignment.start,
                //     verticalDirection: VerticalDirection.down,
                //     clipBehavior: Clip.none,
                //     children: [
                //       SizedBox(
                //         height: 200,
                //         child: FlutterFlowSwipeableStack(
                //           topCardHeightFraction: 0.72,
                //           middleCardHeightFraction: 0.68,
                //           bottomCardHeightFraction: 0.75,
                //           topCardWidthFraction: 0.9,
                //           middleCardWidthFraction: 0.85,
                //           bottomCardWidthFraction: 0.8,
                //           onSwipeFn: (index) {},
                //           onLeftSwipe: (index) {},
                //           onRightSwipe: (index) {},
                //           onUpSwipe: (index) {},
                //           onDownSwipe: (index) {},
                //           itemBuilder: (context, index) {
                //             return [
                //               () => Card(
                //                     clipBehavior:
                //                         Clip.antiAliasWithSaveLayer,
                //                     color: Color.fromARGB(255, 232, 230, 235),
                //                     child: Image.network(
                //                       'https://picsum.photos/seed/44/600',
                //                       width: 100,
                //                       height: 95.6,
                //                       fit: BoxFit.cover,
                //                     ),
                //                   ),
                //               () => const Card(
                //                     clipBehavior:
                //                         Clip.antiAliasWithSaveLayer,
                //                     color: Color.fromARGB(255, 232, 230, 235),
                //                   ),
                //               () => const Card(
                //                     clipBehavior:
                //                         Clip.antiAliasWithSaveLayer,
                //                     color: Color.fromARGB(255, 232, 230, 235),
                //                   ),
                //             ][index]();
                //           },
                //           itemCount: 3,
                //           controller: _model.swipeableStackController,
                //           enableSwipeUp: false,
                //           enableSwipeDown: false,
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                // Wrap(
                //   spacing: 0,
                //   runSpacing: 0,
                //   alignment: WrapAlignment.start,
                //   crossAxisAlignment: WrapCrossAlignment.start,
                //   direction: Axis.horizontal,
                //   runAlignment: WrapAlignment.start,
                //   verticalDirection: VerticalDirection.down,
                //   clipBehavior: Clip.none,
                //   children: [
                //     Container(
                //       height: 200,
                //       decoration: BoxDecoration(),
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(Icons.home),
                onPressed: () {},
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {},
              ),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              label: 'Profile',
              icon: IconButton(
                icon: Icon(Icons.person),
                onPressed: () async {
                  await showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                      title: const Text("Couldn't fetch data !!!"),
                      content: const Text(
                          "Sorry, We couldn't fetch data, check your connection ☹️, Data shown here are dummy"),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(ctx).pop();
                          },
                          child: Container(
                            color: Colors.white,
                            padding: const EdgeInsets.all(14),
                            child: const Text("okay"),
                          ),
                        ),
                      ],
                    ),
                  );
                  // const Text("Sorry, We couldn't fetch data, check your connection ☹️, Data shown here are dummy"),

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfilepageWidget(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
    // return scaffold;
  }
}
                    
                  
                
              

// NAVIGATION BAR
// import 'package:flutter/material.dart';

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _selectedIndex = 0;

//   static const List<Widget> _widgetOptions = <Widget>[
//     Text('Home Page'),
//     Text('Search Page'),
//     Text('Profile Page'),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('My App'),
//       ),
//       body: Center(
//         child: _widgetOptions.elementAt(_selectedIndex),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search),
//             label: 'Search',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'Profile',
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }

                  