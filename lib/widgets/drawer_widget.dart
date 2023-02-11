import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const SizedBox(
            height: 50,
          ),
          const ListTile(
            title: Text(
              'Chats',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          const ChatTile(
            text: "Test1",
          ),
          ListTile(
            title: Row(
              children: const [
                Icon(Icons.add),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'New Chat',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ChatTile extends StatelessWidget {
  final String? text;
  const ChatTile({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          const Icon(Icons.chat),
          const SizedBox(
            width: 20,
          ),
          Text(
            text!.length > 18 ? '${text!.substring(0, 18)}...' : text!,
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
