import 'package:flutter/material.dart';
import '../models/scan_record.dart';

class ScanCard extends StatelessWidget {
  final ScanRecord scan;

  const ScanCard({super.key, required this.scan});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(scan.plant.imageUrl),
          child: scan.plant.imageUrl.isEmpty ? const Icon(Icons.image) : null,
        ),
        title: Text(scan.plant.name),
        subtitle: Text(scan.plant.healthStatus),
        trailing: Text(
          '${scan.date.day}/${scan.date.month}/${scan.date.year}',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        onTap: () {
          // TODO: Navigate to detail (could reuse result screen with this scan)
        },
      ),
    );
  }
}