// import '/flutter_flow/flutter_flow_animations.dart';
// import '/flutter_flow/flutter_flow_drop_down.dart';
// import '/flutter_flow/flutter_flow_icon_button.dart';
// import '/flutter_flow/flutter_flow_theme.dart';
// import '/flutter_flow/flutter_flow_util.dart';
// import '/flutter_flow/flutter_flow_widgets.dart';
// import '/flutter_flow/form_field_controller.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'ARview.dart';
import 'Homepage.dart';

import 'prod1_model.dart';
export 'prod1_model.dart';

class Prod1Widget extends StatefulWidget {
  const Prod1Widget({Key? key}) : super(key: key);

  @override
  _Prod1WidgetState createState() => _Prod1WidgetState();
}


class _Prod1WidgetState extends State<Prod1Widget>
    with TickerProviderStateMixin {
  late Prod1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  ValueNotifier<String> _selectedVal = ValueNotifier('Small');
  List<String> _val = ['Small', 'Medium', 'Large'];

  // final _productSizesList = ["Small","Medium","Large"];
  // String? _selectedVal = "";

  Prod1Model createModel(BuildContext context, Prod1Model Function() param1) {
    return Prod1Model();
  }

  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Prod1Model());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Color.fromARGB(255, 0, 0, 0),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          ' ',
          style: TextStyle(
            fontFamily: 'Lexend Deca',
            color: Color(0xFF151B1E),
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 8, 24, 0),
            child: badges.Badge(
              badgeContent: const Text(
                '2',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                ),
              ),
              showBadge: true,
              shape: badges.BadgeShape.circle,
              badgeColor: Colors.blue.shade100,
              elevation: 4,
              padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
              position: badges.BadgePosition.topEnd(),
              animationType: badges.BadgeAnimationType.scale,
              toAnimate: true,
              child: IconButton(
                // borderColor: Colors.transparent,
                // borderRadius: 30,
                // buttonSize: 48,
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.black,
                  size: 30,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
          ),
        ],
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => Scaffold(
                                  appBar: AppBar(
                                    title: const Text(
                                      '',
                                      style: TextStyle(
                                        color: Color.fromARGB(
                                            255, 0, 0, 0), // set the text color
                                      ),
                                    ),
                                    backgroundColor:
                                        Color.fromARGB(255, 252, 254, 255),
                                    leading: InkWell(
                                      onTap: () async {
                                        Navigator.of(context).pop();
                                      },
                                      child: Icon(
                                        Icons.arrow_back_rounded,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        size: 24,
                                      ),
                                    ),
                                  ),
                                  body: Center(
                                    child: InteractiveViewer(
                                      child: Hero(
                                        tag: 'imageTag',
                                        child: Image.network(
                                          'https://rukminim1.flixcart.com/image/416/416/sofa-sectional/e/p/z/berry-55003-a-3-plywood-durian-black-black-original-imae88khtma8ewx5.jpeg?q=70',
                                          fit: BoxFit.contain,
                                          // fit: BoxFit.fitWidth,
                                        ),
                                      ),
                                      minScale: 0.1,
                                      maxScale: 10,
                                      boundaryMargin: EdgeInsets.all(100),
                                      onInteractionEnd: (details) {},
                                      panEnabled: true,
                                      scaleEnabled: true,
                                    ),

                                    // child: Hero(
                                    //   tag: 'imageTag',
                                    //   child: Image.network(
                                    //     'https://rukminim1.flixcart.com/image/416/416/sofa-sectional/e/p/z/berry-55003-a-3-plywood-durian-black-black-original-imae88khtma8ewx5.jpeg?q=70',
                                    //     fit: BoxFit.contain,
                                    //   ),
                                    // ),
                                  ),
                                ),
                              ),
                            );
                          },
                          child: InteractiveViewer(
                            child: Hero(
                              tag: 'imageTag',
                              // ignore: sort_child_properties_last
                              child: Image.network(
                                'https://rukminim1.flixcart.com/image/416/416/sofa-sectional/e/p/z/berry-55003-a-3-plywood-durian-black-black-original-imae88khtma8ewx5.jpeg?q=70',
                                width: MediaQuery.of(context).size.width,
                                height:
                                    MediaQuery.of(context).size.height * 0.4,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                            minScale: 0.1,
                            maxScale: 10,
                            boundaryMargin: EdgeInsets.all(100),
                            onInteractionEnd: (details) {},
                            panEnabled: true,
                            scaleEnabled: true,
                          ),
                        ),

                        

                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => Scaffold(
                                  appBar: AppBar(
                                    title: const Text(
                                      '',
                                      style: TextStyle(
                                        color: Color.fromARGB(
                                            255, 0, 0, 0), // set the text color
                                      ),
                                    ),
                                    backgroundColor:
                                        Color.fromARGB(255, 252, 254, 255),
                                    leading: InkWell(
                                      onTap: () async {
                                        Navigator.of(context).pop();
                                      },
                                      child: const Icon(
                                        Icons.arrow_back_rounded,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        size: 24,
                                      ),
                                    ),
                                  ),
                                  body: Center(
                                    child: InteractiveViewer(
                                      child: Hero(
                                        tag: 'imageTag1',
                                        child: Image.network(
                                          'https://rukminim1.flixcart.com/image/416/416/k5lcvbk0/sofa-sectional/e/p/z/black-imitation-leather-berry-55003-a-3-durian-eerie-black-original-imafz8jdswkzemga.jpeg?q=70',
                                          fit: BoxFit.contain,
                                          // fit: BoxFit.fitWidth,
                                        ),
                                      ),
                                      minScale: 0.1,
                                      maxScale: 10,
                                      boundaryMargin: EdgeInsets.all(100),
                                      onInteractionEnd: (details) {},
                                      panEnabled: true,
                                      scaleEnabled: true,
                                    ),

                                    // child: Hero(
                                    //   tag: 'imageTag',
                                    //   child: Image.network(
                                    //     'https://rukminim1.flixcart.com/image/416/416/sofa-sectional/e/p/z/berry-55003-a-3-plywood-durian-black-black-original-imae88khtma8ewx5.jpeg?q=70',
                                    //     fit: BoxFit.contain,
                                    //   ),
                                    // ),
                                  ),
                                ),
                              ),
                            );
                          },
                          child: InteractiveViewer(
                            child: Hero(
                              tag: 'imageTag1',
                              // ignore: sort_child_properties_last
                              child: Image.network(
                                'https://rukminim1.flixcart.com/image/416/416/k5lcvbk0/sofa-sectional/e/p/z/black-imitation-leather-berry-55003-a-3-durian-eerie-black-original-imafz8jdswkzemga.jpeg?q=70',
                                width: MediaQuery.of(context).size.width,
                                height:
                                    MediaQuery.of(context).size.height * 0.4,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                            minScale: 0.1,
                            maxScale: 10,
                            boundaryMargin: EdgeInsets.all(100),
                            onInteractionEnd: (details) {},
                            panEnabled: true,
                            scaleEnabled: true,
                          ),
                        ),
                            //         'https://rukminim1.flixcart.com/image/416/416/sofa-sectional/e/p/z/berry-55003-a-3-leatherette-durian-black-black-original-imae95yyczf8rrf6.jpeg?q=70',
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => Scaffold(
                                  appBar: AppBar(
                                    title: const Text(
                                      '',
                                      style: TextStyle(
                                        color: Color.fromARGB(
                                            255, 0, 0, 0), // set the text color
                                      ),
                                    ),
                                    backgroundColor:
                                        Color.fromARGB(255, 252, 254, 255),
                                    leading: InkWell(
                                      onTap: () async {
                                        Navigator.of(context).pop();
                                      },
                                      child: Icon(
                                        Icons.arrow_back_rounded,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        size: 24,
                                      ),
                                    ),
                                  ),
                                  body: Center(
                                    child: InteractiveViewer(
                                      child: Hero(
                                        tag: 'imageTag1',
                                        child: Image.network(
                                          'https://rukminim1.flixcart.com/image/416/416/sofa-sectional/e/p/z/berry-55003-a-3-leatherette-durian-black-black-original-imae95yyczf8rrf6.jpeg?q=70',
                                          fit: BoxFit.contain,
                                          // fit: BoxFit.fitWidth,
                                        ),
                                      ),
                                      minScale: 0.1,
                                      maxScale: 10,
                                      boundaryMargin: EdgeInsets.all(100),
                                      onInteractionEnd: (details) {},
                                      panEnabled: true,
                                      scaleEnabled: true,
                                    ),

                                    // child: Hero(
                                    //   tag: 'imageTag',
                                    //   child: Image.network(
                                    //     'https://rukminim1.flixcart.com/image/416/416/sofa-sectional/e/p/z/berry-55003-a-3-plywood-durian-black-black-original-imae88khtma8ewx5.jpeg?q=70',
                                    //     fit: BoxFit.contain,
                                    //   ),
                                    // ),
                                  ),
                                ),
                              ),
                            );
                          },
                          child: InteractiveViewer(
                            child: Hero(
                              tag: 'imageTag1',
                              // ignore: sort_child_properties_last
                              child: Image.network(
                                'https://rukminim1.flixcart.com/image/416/416/sofa-sectional/e/p/z/berry-55003-a-3-leatherette-durian-black-black-original-imae95yyczf8rrf6.jpeg?q=70',
                                width: MediaQuery.of(context).size.width,
                                height:
                                    MediaQuery.of(context).size.height * 0.4,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                            minScale: 0.1,
                            maxScale: 10,
                            boundaryMargin: EdgeInsets.all(100),
                            onInteractionEnd: (details) {},
                            panEnabled: true,
                            scaleEnabled: true,
                          ),
                        ), 
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => Scaffold(
                                  appBar: AppBar(
                                    title: const Text(
                                      '',
                                      style: TextStyle(
                                        color: Color.fromARGB(
                                            255, 0, 0, 0), // set the text color
                                      ),
                                    ),
                                    backgroundColor:
                                        Color.fromARGB(255, 252, 254, 255),
                                    leading: InkWell(
                                      onTap: () async {
                                        Navigator.of(context).pop();
                                      },
                                      child: Icon(
                                        Icons.arrow_back_rounded,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        size: 24,
                                      ),
                                    ),
                                  ),
                                  body: Center(
                                    child: InteractiveViewer(
                                      child: Hero(
                                        tag: 'imageTag1',
                                        child: Image.network(
                                          'https://rukminim1.flixcart.com/image/416/416/k1mgu4w0/sofa-sectional/f/t/f/black-imitation-leather-berry-55001-a-1-durian-black-original-imafjqasvgtdk9gy.jpeg?q=70',
                                          fit: BoxFit.contain,
                                          // fit: BoxFit.fitWidth,
                                        ),
                                      ),
                                      minScale: 0.1,
                                      maxScale: 10,
                                      boundaryMargin: EdgeInsets.all(100),
                                      onInteractionEnd: (details) {},
                                      panEnabled: true,
                                      scaleEnabled: true,
                                    ),

                                    // child: Hero(
                                    //   tag: 'imageTag',
                                    //   child: Image.network(
                                    //     'https://rukminim1.flixcart.com/image/416/416/sofa-sectional/e/p/z/berry-55003-a-3-plywood-durian-black-black-original-imae88khtma8ewx5.jpeg?q=70',
                                    //     fit: BoxFit.contain,
                                    //   ),
                                    // ),
                                  ),
                                ),
                              ),
                            );
                          },
                          child: InteractiveViewer(
                            child: Hero(
                              tag: 'imageTag1',
                              // ignore: sort_child_properties_last
                              child: Image.network(
                                'https://rukminim1.flixcart.com/image/416/416/k1mgu4w0/sofa-sectional/f/t/f/black-imitation-leather-berry-55001-a-1-durian-black-original-imafjqasvgtdk9gy.jpeg?q=70',
                                width: MediaQuery.of(context).size.width,
                                height:
                                    MediaQuery.of(context).size.height * 0.4,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                            minScale: 0.1,
                            maxScale: 10,
                            boundaryMargin: EdgeInsets.all(100),
                            onInteractionEnd: (details) {},
                            panEnabled: true,
                            scaleEnabled: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.85, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-0.05, 0),
                          child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ARviewWidget()),
                                );
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(-0.05, 0),
                                    child: Text(
                                      'View in AR ',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Icon(
                                    Icons.view_in_ar,
                                    color: Colors.black,
                                    size: 42,
                                  ),
                                ],
                              ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                        child: Text(
                          'Durian Berry Leatherette 3\nSeater Sofa (Large)',
                          // style: FlutterFlowTheme.of(context).bodyText1,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 5),
                        child: Text(
                          '₹24,360',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 26,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 3,
                  ),
                  Container(
                    width: 401.1,
                    height: 68.9,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(50, 0, 50, 0),
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
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: const [
                                  Icon(
                                    Icons.reply,
                                    color: Colors.black,
                                    size: 24,
                                  ),
                                  Text(
                                    '10 Days Returns',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 100,
                          child: VerticalDivider(
                            thickness: 1,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(50, 0, 50, 0),
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
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: const [
                                  Icon(
                                    Icons.attach_money_rounded,
                                    color: Colors.black,
                                    size: 24,
                                  ),
                                  Text(
                                    'Cash On Delivery\nAvailable',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    thickness: 3,
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                    child: Container(
                      width: 402.4,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      child: const Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(9, 0, 5, 2),
                        child: Text(
                          'Berry is one of our bestselling sofas. With a classic contemporary design and a slender curves Berry is the finest piece of furniture we have made. The Sofa stands firm on solid pvc legs with thick armrests that are slightly curved on the front face of the sofa. Each curve defines a seating space which provides for people to be seated comfortably. Finished in a eerie black leatherette, the sofa makes a fantastic first impression. The cushioning adds supreme comfort for the person sitting on it making this a must have in every living space.',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Material(
          //   color: Colors.transparent,
          //   elevation: 3,
          //   shape: RoundedRectangleBorder(
          //     borderRadius: BorderRadius.circular(0),
          //   ),
          //   child: Container(
          //     width: double.infinity,
          //     height: 100,
          //     decoration: BoxDecoration(
          //       color: Color.fromARGB(255, 233, 228, 228),
          //       boxShadow: const [
          //         BoxShadow(
          //           blurRadius: 4,
          //           color: Color(0x320F1113),
          //           offset: Offset(0, -2),
          //         )
          //       ],
          //       borderRadius: BorderRadius.circular(0),
          //     ),
              // child: Padding(
              //   padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 34),
              //   child: Row(
              //     mainAxisSize: MainAxisSize.max,
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Expanded(
              //         child: Padding(
              //           padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
              //           child: DropdownButton<String>(
              //             // controller: _dropdownController,
              //             value: _selectedVal.value,
              //             items: _val.map((option) {
              //               return DropdownMenuItem(
              //                 value: option,
              //                 child: Text(option),
              //               );
              //             }).toList(),
              //             onChanged: (newValue) {
              //               setState(() {
              //                 _selectedVal.value = newValue!;
              //               });
              //             },
              //           ),
              //         ),
              //       ),
              //       Padding(
              //         padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
              //         child: ElevatedButton(
              //             onPressed: () {
              //               print('Button pressed ...');
              //             },
              //             child: Text("Add to cart")),
              //       ),
              //     ],
              //   ),
              // ),
            // ),
          // ),
        ],
      ),
    );
  }
}

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Page 2'),
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.pop(context); // navigate back to the previous page
//           },
//         ),
//       ),
//       body: Center(
//         child: Text('This is page 2'),
//       ),
//     );
//   }
// }