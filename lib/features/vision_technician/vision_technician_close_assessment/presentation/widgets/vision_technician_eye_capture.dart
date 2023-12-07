import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VisionTechnicianEyeCapture extends StatefulWidget {
  const VisionTechnicianEyeCapture({super.key});

  @override
  State<VisionTechnicianEyeCapture> createState() =>
      _VisionTechnicianEyeCaptureState();
}

class _VisionTechnicianEyeCaptureState
    extends State<VisionTechnicianEyeCapture> {
  @override
  void initState() {
    // TODO: implement initState
    openCamera();
    super.initState();
  }

  void openCamera() async {
    await availableCameras().then((value) {
      
    });
    //  Navigator.push(context,
    //             // MaterialPageRoute(builder: (_) => CameraPage(cameras: value) ),

    //             ),);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
