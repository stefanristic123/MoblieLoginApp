import 'package:camera/camera.dart';
import 'package:flutter/widgets.dart';

class CameraTab extends StatefulWidget {
  /// Default Constructor
  const CameraTab({super.key});

  @override
  State<CameraTab> createState() => _CameraTabState();
}

class _CameraTabState extends State<CameraTab> {
  CameraController? controller;
  List<CameraDescription> cameras = [];

  Future<void> initializeCamera() async {
    try {
      cameras = await availableCameras();

      if (cameras.isNotEmpty) {
        controller = CameraController(cameras[0], ResolutionPreset.max);
        controller?.initialize().then((_) {
          if (!mounted) {
            return;
          }
          setState(() {});
        }).catchError((Object e) {
          if (e is CameraException) {
            switch (e.code) {
              case 'CameraAccessDenied':
                // Handle access errors here.
                break;
              default:
                // Handle other errors here.
                break;
            }
          }
        });
      }
    } on Exception catch (e) {
      print(e);
    }
   }

  @override
  void initState() {
    super.initState();

    initializeCamera();
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (controller == null || !controller!.value.isInitialized) {
      return Container();
    }
    return Padding(
    padding: EdgeInsets.only(left: 20, top: 0, right: 20, bottom: 0),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: CameraPreview(controller!),
    ),
  );
  }
}
