import 'package:flutter/material.dart';
import 'package:meri_didi_app/theme.dart';

class ImageTextCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String body;
  final String buttonText;
  final VoidCallback onPressed;

  const ImageTextCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.body,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 3,
            blurRadius: 5,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: Row(
        children: [
          // Left Side: Text content
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: titleBigBoldTextStyle.copyWith(fontSize: 18),
                  ),
                  SizedBox(height: 8),
                  Text(
                    body,
                    style: hintTextStyle.copyWith(fontSize: 14),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: onPressed,

                    style: ElevatedButton.styleFrom(
                      backgroundColor: lightYellowColor,
                      padding: EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 2,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      buttonText,
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(width: 12),

          // Right Side: Image
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            child: Image.asset(
              imagePath,
              width: 150,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
