import 'package:audio_chat/src/widgets/chat_box.dart';
import 'package:audio_chat/src/widgets/record_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const route = '/home';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Column(
          children: [
            Expanded(child: Container()),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                ChatBox(controller: controller),
                const SizedBox(width: 4),
                RecordButton(controller: controller),
              ],
            ),
          ],
        ),
      ),
    );
  }
}