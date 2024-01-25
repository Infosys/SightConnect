import 'package:flutter/material.dart';
import 'package:chatbot/data/models/diagnostic_report_template_FHIR_model.dart';

class TriageQuestionImage extends StatelessWidget {
  const TriageQuestionImage({super.key, required this.question});
  final QuestionnaireItemFHIRModel? question;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 12),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: (question?.relatedImage == null ||
                  question?.relatedImage?.isEmpty == true ||
                  question?.relatedImage?.first.url == null)
              ? Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 100),
                  child: const Center(
                    child: Text(
                      ("No Preview Available"),
                      style: TextStyle(color: Colors.white),
                      // style: applyRobotoFont(
                      //     fontSize: 16,
                      //     fontWeight: FontWeight.w500,
                      //     color: AppColor.white),
                    ),
                  ),
                )
              // : AppNetworkImage(
              //     shapeCircle: false,
              //     imageUrl: question!.relatedImage!.first.url!,
              //   ),
              : Image.network(
                  question!
                      .relatedImage!.first.url!, // Replace with your image URL
                  fit: BoxFit.cover, // Adjust the fit as per your requirement
                )),
    );
  }
}
