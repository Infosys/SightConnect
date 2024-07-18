package com.healthconnect.sightconnect

import android.content.Context
import android.hardware.camera2.CameraAccessException
import android.hardware.camera2.CameraCharacteristics
import android.hardware.camera2.CameraManager
import android.os.Bundle
import androidx.annotation.NonNull
import co.elastic.apm.android.sdk.ElasticApmAgent
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
class MainActivity: FlutterActivity() {
    private val CHANNEL = "com.healthconnect.sightconnect/camera"


    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        MethodChannel(
            flutterEngine.dartExecutor.binaryMessenger,
            CHANNEL
        ).setMethodCallHandler { call, result ->
            if (call.method == "getCameraInfo") {
                val cameraInfo = calculateCameraInfo()
                result.success(cameraInfo)
            } else {
                result.notImplemented()
            }
        }
    }

    private fun calculateCameraInfo(): Map<String, Double> {
        val cameraManager = getSystemService(Context.CAMERA_SERVICE) as CameraManager
        try {
            for (cameraId in cameraManager.cameraIdList) {
                val characteristics = cameraManager.getCameraCharacteristics(cameraId)
                val lensFacing = characteristics.get(CameraCharacteristics.LENS_FACING)
                if (lensFacing == CameraCharacteristics.LENS_FACING_FRONT) {
                    val focalLengths =
                        characteristics.get(CameraCharacteristics.LENS_INFO_AVAILABLE_FOCAL_LENGTHS)
                    val sensorSize =
                        characteristics.get(CameraCharacteristics.SENSOR_INFO_PHYSICAL_SIZE)

                    if (focalLengths != null && focalLengths.isNotEmpty() && sensorSize != null) {
                        val focalLength = focalLengths[0].toDouble()
                        val sensorWidth = sensorSize.width.toDouble()
                        val sensorHeight = sensorSize.height.toDouble()
                        val angleX = Math.toDegrees(2 * Math.atan(sensorWidth / (2 * focalLength)))
                        val angleY = Math.toDegrees(2 * Math.atan(sensorHeight / (2 * focalLength)))
                        val sensorX = Math.tan(Math.toRadians(angleX / 2)) * 2 * focalLength
                        val sensorY = Math.tan(Math.toRadians(angleY / 2)) * 2 * focalLength
                    val result = HashMap<String, Double>()
                    result["focalLength"] = focalLength
                    result["angleX"] = angleX
                    result["angleY"] = angleY
                    result["sensorX"] = sensorX
                    result["sensorY"] = sensorY
                    return result
                    }
                    
                }
            }
        } catch (e: CameraAccessException) {
            e.printStackTrace()
        }

        return emptyMap()
    }
}
