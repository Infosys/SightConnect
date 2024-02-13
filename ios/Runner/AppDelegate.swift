import Flutter
import AVFoundation


@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  private let CHANNEL = "com.healthconnect.sightconnect/camera"
    
    override func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        let controller: FlutterViewController = window?.rootViewController as! FlutterViewController
        let channel = FlutterMethodChannel(name: CHANNEL, binaryMessenger: controller.binaryMessenger)
        
        channel.setMethodCallHandler { (call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in
            if call.method == "getCameraInfo" {
                let cameraInfo = self.calculateCameraInfo()
                result(cameraInfo)
            } else {
                result(FlutterMethodNotImplemented)
            }
        }
        
        GeneratedPluginRegistrant.register(with: self)
        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
    
    private func calculateCameraInfo() -> [String: Double] {
        var result = [String: Double]()
        let device = AVCaptureDevice.default(.builtInWideAngleCamera, for: .video, position: .front)

        if let device = device {
            let fovDegrees = device.activeFormat.videoFieldOfView
            let fov = fovDegrees * .pi / 180
            let focalLength = 35.0 / (2.0 * tan(fov / 2))
            result["focalLength"] = Double(focalLength/10)
        }
        
        let modelName: [String : Double] = {
                var systemInfo = utsname()
                uname(&systemInfo)
                let machineMirror = Mirror(reflecting: systemInfo.machine)
                let identifier = machineMirror.children.reduce("") { identifier, element in
                    guard let value = element.value as? Int8, value != 0 else { return identifier }
                    return identifier + String(UnicodeScalar(UInt8(value)))
                }

                func mapToDevice(identifier: String) -> [String : Double] { // swiftlint:disable:this cyclomatic_complexity
                    #if os(iOS)
                    switch identifier {
                    case "iPod5,1":        return ["width": 1.3, "height": 1.5]
                    case "iPod7,1":          return ["width": 1.3, "height": 1.5]
                    case "iPod9,1":            return ["width": 1.3, "height": 1.5]
                    case "iPhone3,1", "iPhone3,2", "iPhone3,3":       return ["width": 1.3, "height": 1.5]
                    case "iPhone4,1":                    return ["width": 1.3, "height": 1.5]
                    case "iPhone5,1", "iPhone5,2":           return ["width": 1.6, "height": 1.9]
                    case "iPhone5,3", "iPhone5,4":           return ["width": 1.6, "height": 1.9]
                    case "iPhone6,1", "iPhone6,2":           return ["width": 1.6, "height": 1.9]
                    case "iPhone7,2":                        return ["width": 2.0, "height": 2.3]
                    case "iPhone7,1":                         return ["width": 2.0, "height": 2.3]
                    case "iPhone8,1":                         return ["width": 2.0, "height": 2.3]
                    case "iPhone8,2":                         return ["width": 2.0, "height": 2.3]
                    case "iPhone9,1", "iPhone9,3":             return ["width": 2.0, "height": 2.3]
                    case "iPhone9,2", "iPhone9,4":             return ["width": 2.0, "height": 2.3]
                    case "iPhone10,1", "iPhone10,4": return ["width": 2.0, "height": 2.7]
                    case "iPhone10,2", "iPhone10,5": return ["width": 2.0, "height": 2.7]
                    case "iPhone10,3", "iPhone10,6": return ["width": 2.0, "height": 2.7]
                    case "iPhone11,2": return ["width": 2.0, "height": 2.7]
                    case "iPhone11,4", "iPhone11,6": return ["width": 2.0, "height": 2.7]
                    case "iPhone11,8": return ["width": 2.0, "height": 2.7]
                    case "iPhone12,1": return ["width": 2.0, "height": 2.7]
                    case "iPhone12,3": return ["width": 2.0, "height": 2.7]
                    case "iPhone12,5": return ["width": 2.0, "height": 2.7]
                    case "iPhone13,1": return ["width": 2.0, "height": 2.7]
                    case "iPhone13,2": return ["width": 2.0, "height": 2.7]
                    case "iPhone13,3": return ["width": 2.0, "height": 2.7]
                    case "iPhone13,4": return ["width": 2.0, "height": 2.7]
                    case "iPhone14,4": return ["width": 2.0, "height": 2.7]
                    case "iPhone14,5": return ["width": 2.0, "height": 2.7]
                    case "iPhone14,2": return ["width": 2.0, "height": 2.7]
                    case "iPhone14,3": return ["width": 2, "height": 2.7]
                    case "iPhone14,7": return ["width": 2.0, "height": 2.7]
                    case "iPhone14,8": return ["width": 2.0, "height": 2.7]
                    case "iPhone15,2": return ["width": 2.0, "height": 2.7]
                    case "iPhone15,3": return ["width": 2.0, "height": 2.7]
                    case "iPhone15,4": return ["width": 2.0, "height": 2.7]
                    case "iPhone15,5": return ["width": 2.0, "height": 2.7]
                    case "iPhone16,1": return ["width": 2.0, "height": 2.7]
                    case "iPhone16,2": return ["width": 2.0, "height": 2.7]
                    case "iPhone8,4": return ["width": 2.0, "height": 2.7]
                    case "iPhone12,8": return ["width": 2.0, "height": 2.7]
                    case "iPhone14,6":                  return ["width": 2.0, "height": 2.7]
                    case "iPad2,1", "iPad2,2", "iPad2,3", "iPad2,4":     return  ["width": 2.0, "height": 2.7]
                    case "iPad3,1", "iPad3,2", "iPad3,3":                return  ["width": 2.0, "height": 1.2]
                    case "iPad3,4", "iPad3,5", "iPad3,6":               return   ["width": 2.0, "height": 1.2]
                    case "iPad6,11", "iPad6,12":                        return   ["width": 2.0, "height": 1.2]
                    case "iPad7,5", "iPad7,6":return ["width": 1.0, "height": 1.2]
                    case "iPad7,11", "iPad7,12":return ["width": 1.0, "height": 1.2]
                    case "iPad11,6", "iPad11,7":return ["width": 1.0, "height": 1.2]
                    case "iPad12,1", "iPad12,2":return ["width": 1.0, "height": 1.2]
                    case "iPad13,18", "iPad13,19":return ["width": 1.0, "height": 1.2]
                    case "iPad4,1", "iPad4,2", "iPad4,3":return ["width": 1.0, "height": 1.2]
                    case "iPad5,3", "iPad5,4":return ["width": 1.0, "height": 1.2]
                    case "iPad11,3", "iPad11,4":return ["width": 1.0, "height": 1.2]
                    case "iPad13,1", "iPad13,2":return ["width": 1.0, "height": 1.2]
                    case "iPad13,16", "iPad13,17":return ["width": 1.0, "height": 1.2]
                    case "iPad2,5", "iPad2,6", "iPad2,7":return ["width": 1.0, "height": 1.2]
                    case "iPad4,4", "iPad4,5", "iPad4,6":return ["width": 1.0, "height": 1.2]
                    case "iPad4,7", "iPad4,8", "iPad4,9":return ["width": 1.0, "height": 1.2]
                    case "iPad5,1", "iPad5,2":return ["width": 1.0, "height": 1.2]
                    case "iPad11,1", "iPad11,2":return ["width": 1.0, "height": 1.2]
                    case "iPad14,1", "iPad14,2":return ["width": 1.0, "height": 1.2]
                    case "iPad6,3", "iPad6,4":return ["width": 1.0, "height": 1.2]
                    case "iPad7,3", "iPad7,4":return ["width": 1.0, "height": 1.2]
                    case "iPad8,1", "iPad8,2", "iPad8,3", "iPad8,4":return ["width": 1.0, "height": 1.2]
                    case "iPad8,9", "iPad8,10":return ["width": 1.0, "height": 1.2]
                    case "iPad13,4", "iPad13,5", "iPad13,6", "iPad13,7":return ["width": 1.0, "height": 1.2]
                    case "iPad14,3", "iPad14,4":return ["width": 1.0, "height": 1.2]
                    case "iPad6,7", "iPad6,8":return ["width": 1.0, "height": 1.2]
                    case "iPad7,1", "iPad7,2":return ["width": 1.0, "height": 1.2]
                    case "iPad8,5", "iPad8,6", "iPad8,7", "iPad8,8":return ["width": 1.0, "height": 1.2]
                    case "iPad8,11", "iPad8,12":return ["width": 1.0, "height": 1.2]
                    case "iPad13,8", "iPad13,9", "iPad13,10", "iPad13,11":return ["width": 1.0, "height": 1.2]
                    case "iPad14,5", "iPad14,6":                         return  ["width": 2.0, "height": 2.3]
                    case "AppleTV5,3":return ["width": 1.0, "height": 1.2]
                    case "AppleTV6,2":return ["width": 1.0, "height": 1.2]
                    case "AudioAccessory1,1":return ["width": 1.0, "height": 1.2]
                    case "AudioAccessory5,1":return ["width": 1.0, "height": 1.2]
                    case "i386", "x86_64", "arm64":return ["width": 1.0, "height": 1.2]
                    default: return ["width": 1.0, "height": 1.2]
                    }
                    return ["width": 1.0, "height": 1.2]
                    #endif
                }
            //    logger.d(identifier)
                return mapToDevice(identifier: identifier)
            }()
        
//       logger.d(modelName)
        result["sensorX"] = modelName["width"]
        result["sensorY"] = modelName["height"]
        print(result)
        
        return result
    }
    
}
