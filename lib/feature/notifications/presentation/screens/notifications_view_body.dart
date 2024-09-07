import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: _recipientController,
              decoration: const InputDecoration(
                labelText: 'Recipient ID',
                hintText: 'Enter the recipient \'s unique ID',
              ),
            ),
            TextFormField(
              controller: _messageController,
              decoration: const InputDecoration(
                labelText: 'Message',
                hintText: 'Enter the notification message',
              ),
            ),
            ElevatedButton(
              onPressed: _sendNotification,
              child: const Text('Send Notification'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _sendNotification() async {
    final message = _messageController.text;
    final recipientId = _recipientController.text;

    if (message.isEmpty || recipientId.isEmpty) {
      //   handle Empty fields
      return;
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
  }
}
