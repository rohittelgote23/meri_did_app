import 'package:flutter/material.dart';
import 'package:meri_didi_app/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Profile',
                style: titleBigBoldTextStyle.copyWith(fontSize: 22),
              ),
              SizedBox(height: 20),
              Container(
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/img.webp',
                        width: 100,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Stack(
                        children: [
                          // The profile details
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Full Name',
                                        style: labelTextStyle.copyWith(
                                          fontSize: 12,
                                        ),
                                      ),
                                      Text(
                                        'John Doe',
                                        style: labelTextStyle.copyWith(
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 20),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Mobile Number',
                                        style: labelTextStyle.copyWith(
                                          fontSize: 12,
                                        ),
                                      ),
                                      Text(
                                        '9876543210',
                                        style: labelTextStyle.copyWith(
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Email',
                                    style: labelTextStyle.copyWith(
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                    'email@gmail.com',
                                    style: labelTextStyle.copyWith(
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),

                          // Positioned edit icon
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Icon(Icons.edit),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Text('Manage My Address', style: titleNormalTextStyle),
              SizedBox(height: 10),
              Container(
                height: 130,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Address'),
                          SizedBox(height: 20),
                          Text('Near Hotel and 20 house no Pune etcn lsnd kf'),
                        ],
                      ),
                    ),
                    SizedBox(width: 60),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: 80,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1, color: greyColor),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(height: 5),
                            Icon(Icons.add),
                            Divider(color: greyColor),
                            Icon(Icons.edit),
                            SizedBox(height: 8),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Text(
                'You Might be looking for these',
                style: titleNormalTextStyle,
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    _iconText(Icons.info, 'Terms and Condition'),
                    SizedBox(height: 15),
                    _iconText(Icons.account_circle, 'About Us'),
                    SizedBox(height: 15),
                    _iconText(Icons.mail_rounded, 'Contact Us'),
                    SizedBox(height: 15),
                    _iconText(Icons.chat, 'Chat With Us'),
                  ],
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    side: BorderSide(color: greyColor, width: 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  ),
                  child: Text(
                    'Log Out',
                    style: TextStyle(
                      color: greyColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _iconText(IconData icon, String label) {
  return Row(
    children: [
      CircleAvatar(
        radius: 20,
        backgroundColor: Colors.grey.shade400,
        child: Icon(icon, color: Colors.white),
      ),
      SizedBox(width: 10),
      Text(
        label,
        style: TextStyle(
          fontSize: 16,
          color: Colors.grey.shade500,
          fontWeight: FontWeight.w500,
        ),
      ),
    ],
  );
}
