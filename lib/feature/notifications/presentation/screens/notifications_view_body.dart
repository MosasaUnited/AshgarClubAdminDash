import 'package:ashgar_club_admin_dash/core/widgets/app_text_form_field.dart';
import 'package:ashgar_club_admin_dash/core/widgets/custom_button_animation.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationsViewBody extends StatefulWidget {
  const NotificationsViewBody({super.key});

  @override
  State<NotificationsViewBody> createState() => _NotificationsViewBodyState();
}

class _NotificationsViewBodyState extends State<NotificationsViewBody> {
  final _messageController = TextEditingController();
  final _recipientController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppTextFormField(
                contentPadding: const EdgeInsets.all(16),
                controller: _recipientController,
                hintText: 'Enter the recipient\'s unique ID',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please Enter the recipient \'s unique ID';
                  }
                }),
            SizedBox(
              height: 15.h,
            ),
            AppTextFormField(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 50.w, vertical: 100.h),
                controller: _messageController,
                hintText: 'Enter the notification message',
                inputTextStyle: TextStyle(
                  fontSize: 16.sp,
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please Enter the notification message';
                  }
                }),

            // TextFormField(
            //   controller: _messageController,
            //   decoration: const InputDecoration(
            //     labelText: 'Message',
            //     hintText: 'Enter the notification message',
            //   ),
            // ),
            SizedBox(
              height: 50.h,
            ),
            CustomButtonAnimation(
              onPressed: () {
                if (_messageController.value.text.isEmpty ||
                    _recipientController.value.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        'The Notification you trying to send is Empty',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      backgroundColor: Colors.red,
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        'The Notification Send Successfully ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      backgroundColor: Colors.green,
                    ),
                  );
                }
              },
              child: const Text('Send Notification'),
            ),
          ],
        ),
      ),
    );
  }

  // Use It When API Ready
  Future<String?> _sendNotification() async {
    final message = _messageController.text;
    final recipientId = _recipientController.text;

    if (message.isEmpty || recipientId.isEmpty) {
      //   handle Empty fields
      return 'Enter the notification message';
    }
    try {
      final dio = Dio();
      final response = await dio.post(
        // TODO: add your notification API here
        'https://your-notification-api/send',
        data: {
          'recipientID': recipientId,
          'message': message,
        },
      );

      if (response.statusCode == 200) {
        //   Handle Successful notification send
      } else {
        //   Handle Error
      }
    } catch (e) {
      //   Handle Error
    }
    return null;
  }
}
