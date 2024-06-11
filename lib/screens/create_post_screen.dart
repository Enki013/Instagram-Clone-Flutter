import 'package:flutter/material.dart';

class CreatePostScreen extends StatelessWidget {
  final TextEditingController _captionController = TextEditingController();

  CreatePostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Post'),
        actions: [
          IconButton(
            icon: const Icon(Icons.send),
            onPressed: () {
              // Post creation logic
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              height: 200,
              color: Colors.grey[300],
              child: const Center(
                child: Text('Image Preview'),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _captionController,
              decoration: const InputDecoration(labelText: 'Write a caption...'),
            ),
          ],
        ),
      ),
    );
  }
}
