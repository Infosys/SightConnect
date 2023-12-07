import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';

class EyeScanSlide1 extends StatefulWidget {
  const EyeScanSlide1({super.key});

  @override
  State<EyeScanSlide1> createState() => _EyeScanSlide1State();
}

class _EyeScanSlide1State extends State<EyeScanSlide1> {
  
  CameraController? controller;
  String imagePath = "";


  @override
  void initState() {
    getCameras();
    super.initState();
    
  }

  void getCameras() async {
    // controller = CameraController(cameras![1], ResolutionPreset.max);
    // controller?.initialize().then((_) {
    //   if (!mounted) {
    //     return;
    //   }
    //   setState(() {});
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
