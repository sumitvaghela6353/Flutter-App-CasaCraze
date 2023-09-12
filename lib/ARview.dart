import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ar_flutter_plugin/ar_flutter_plugin.dart';
import 'package:ar_flutter_plugin/managers/ar_session_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_object_manager.dart';
import 'package:ar_flutter_plugin/models/ar_node.dart';
import 'package:ar_flutter_plugin/managers/ar_anchor_manager.dart';
import 'package:ar_flutter_plugin/managers/ar_location_manager.dart';
import 'package:ar_flutter_plugin/datatypes/node_types.dart';
import 'package:vector_math/vector_math_64.dart';

class ARviewWidget extends StatefulWidget {
  const ARviewWidget({super.key});

  @override
  State<ARviewWidget> createState() => _ARviewWidgetState();
}

class _ARviewWidgetState extends State<ARviewWidget> {
  late ARSessionManager arSessionManager;
  late ARObjectManager arObjectManager;
  ARNode? localObject;
  ARNode? webObject;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .8,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(22),
              child: ARView(onARViewCreated: onARViewCreated),
            ),
          ),
          ElevatedButton(
            onPressed: onWebObjectAtButtonPressed,
            child: Text('click for show ar'),
          ),
        ],
      ),
    );
  }

  void onARViewCreated(
      ARSessionManager sessionManager,
      ARObjectManager objectManager,
      ARAnchorManager arAnchorManager,
      ARLocationManager arLocationManager) {
    this.arSessionManager = sessionManager;
    this.arObjectManager = objectManager;

    this.arSessionManager.onInitialize(
          showFeaturePoints: false,
          showPlanes: true,
          customPlaneTexturePath: 'wp4456147.png',
          // showWorldOrigin: true,
          showWorldOrigin: false,
          handleTaps:
              false, //to handle some tap properties ....................................................
        );

    this.arObjectManager.onInitialize();
  }

  Future<void> onLocalObjectClicked() async {
    if (localObject != null) {
      arObjectManager.removeNode(localObject!);
      localObject = null;
    } else {
      var newNode = ARNode(
          type: NodeType.localGLTF2,
          uri: "scene.gltf",
          scale: Vector3(0.2, 0.2, 0.2),
          position: Vector3(0.0, 0.0, 0.0),
          rotation: Vector4(1.0, 0.0, 0.0, 0.0));
      bool? didAddLocalNode = await arObjectManager.addNode(newNode);
      localObject = (didAddLocalNode!) ? newNode : null;
    }
  }

  Future<void> onWebObjectAtButtonPressed() async {
    if (webObject != null) {
      arObjectManager.removeNode(webObject!);
      webObject = null;
    } else {
      var newNode = ARNode(
          type: NodeType.webGLB,
          uri:
              "https://github.com/KhronosGroup/glTF-Sample-Models/raw/master/2.0/Fox/glTF-Binary/Fox.glb",
          scale: Vector3(0.2, 0.2, 0.2));
      bool? didAddWebNode = await arObjectManager.addNode(newNode);
      webObject = (didAddWebNode!) ? newNode : null;
    }
  }
}
