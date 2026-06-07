import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: ListView(
        children: [
          const SizedBox(height: 20),
          const CircleAvatar(
            radius: 50,
            child: Icon(Icons.person, size: 50),
          ),
          const SizedBox(height: 10),
          const Center(child: Text('John Doe', style: TextStyle(fontSize: 22))),
          const SizedBox(height: 20),
          ListTile(
            leading: const Icon(Icons.history),
            title: const Text('My Scans'),
            onTap: () => context.push('/history'),
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () => context.push('/settings'),
          ),
        ],
      ),
    );
  }
}