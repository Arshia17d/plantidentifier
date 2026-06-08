import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CameraPreviewScreen extends StatelessWidget {
  const CameraPreviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Mock camera preview (gray rectangle)
          Container(color: Colors.black54),
          // Shutter button
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(32),
              child: CircleAvatar(
                radius: 35,
                backgroundColor: Colors.white,
                child: IconButton(
                  icon: const Icon(Icons.camera, size: 30),
                  onPressed: () {
                    // TODO: Actually capture image, then navigate to loading
                    context.push('/loading');
                  },
                ),
              ),
            ),
          ),
          // Back button
          SafeArea(
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => context.pop(),
            ),
          ),
        ],
      ),
    );
  }
}