import 'package:eye_care_for_all/core/constants/app_color.dart';
import 'package:eye_care_for_all/core/constants/app_images.dart';
import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';

class EyeCampCard extends StatelessWidget {
  const EyeCampCard({super.key, required this.data});
  final Map<String, dynamic> data;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSize.kmradius),
        ),
        margin: EdgeInsets.only(right: AppSize.width(context) * 0.035),
        width: AppSize.width(context) * 0.85,
        child: Stack(
          fit: StackFit.loose,
          children: [
            Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                    width: AppSize.width(context) * 0.3,
                    child: Image.asset(AppImages.eyeCampImage))),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                  padding: EdgeInsets.only(
                      top: AppSize.width(context) * 0.069,
                      right: AppSize.width(context) * 0.03),
                  width: AppSize.width(context) * 0.51,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        data['info'],
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                        style: applyRobotoFont(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: AppSize.width(context) * 0.025,
                      ),
                      Text(
                        data['date'],
                        style: applyRobotoFont(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: AppColor.kGrey),
                      ),
                      SizedBox(
                        height: AppSize.width(context) * 0.001,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Register Now",
                          style: applyRobotoFont(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: AppColor.kBlue),
                        ),
                      ),
                    ],
                  )),
            ),
          ],
        ));
  }
}


// class EyeCampCard extends StatelessWidget {
//   const EyeCampCard({super.key, required this.data});
//   final List<Map<String, dynamic>> data;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Container(
//         color: Colors.black,
//         height: Responsive.isMobile(context)
//             ? AppSize.width(context) * 0.55
//             : AppSize.width(context) * 0.35,
    
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: ListView.builder(
//             scrollDirection: Axis.horizontal,
//             shrinkWrap: true, 
//             itemCount: data.length,
//             itemBuilder: (BuildContext context, int index) {  
//               return Container(  
//               //   width: Responsive.isMobile(context)
//               // ? AppSize.width(context) * 0.8
//               // : AppSize.width(context) * 0.35,
//                 padding: const EdgeInsets.symmetric(horizontal: 1),        
//                 color: Colors.blue,
//                 child: Text(data[index]['info'], style: applyRobotoFont(
//                   fontSize: 14, fontWeight: FontWeight.w700, color: AppColor.kWhite
//                 ),),
//               );
//             },       
//             ),
//         ),
//       ),
//     );
//   }
// }

// Flexible(
//               flex: 2,
//               child: Container(
//                 // color: Colors.black,
//                 width: AppSize.width(context) * 0.66,
//                 padding: const EdgeInsets.only(
//                     top: 20, bottom: 10, left: 22, right: 20),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       data['info'],
//                       maxLines: 5,
//                       overflow: TextOverflow.ellipsis,
//                       style: applyRobotoFont(
//                         fontSize: 14,
//                         fontWeight: FontWeight.w700,
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     Text(
//                       data['date'],
//                       style: applyRobotoFont(
//                           fontSize: 12,
//                           fontWeight: FontWeight.w500,
//                           color: AppColor.kGrey),
//                     ),
//                     TextButton(
//                       onPressed: () {},
//                       child: Text(
//                         "Share Now",
//                         style: applyRobotoFont(
//                             fontSize: 14,
//                             fontWeight: FontWeight.w700,
//                             color: AppColor.kBlue),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),