import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qubit/app/controllers/messages_controller.dart';

class Messages extends StatelessWidget {
  const Messages({super.key});

  @override
  Widget build(BuildContext context) {
    final MessagesController messagesController = Get.put(MessagesController());

    return Obx(
      () => Badge(
        backgroundColor: messagesController.messages.isNotEmpty
            ? Colors.red
            : Colors.transparent,
        label: messagesController.messages.isNotEmpty
            ? Text(messagesController.messages.length.toString())
            : null,
        child: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.notifications,
          ),
        ),
      ),
    );
  }
}
