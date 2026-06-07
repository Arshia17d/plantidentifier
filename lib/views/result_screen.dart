import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../models/plant.dart';
import '../services/mock_service.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Get mock result
    final Plant plant = MockService.getMockResult(); // TODO: Get from backend

    return Scaffold(
      appBar: AppBar(
        title: const Text('Result'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.go('/home'),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Plant Image (mock placeholder)
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(16),
                image: const DecorationImage(
                  image: NetworkImage('https://via.placeholder.com/400x250'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Plant Name
            Text(
              plant.name,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            // Health Status with color
            Row(
              children: [
                Icon(
                  plant.healthStatus == 'Healthy' ? Icons.check_circle : Icons.warning,
                  color: plant.healthStatus == 'Healthy' ? Colors.green : Colors.orange,
                ),
                const SizedBox(width: 8),
                Text(
                  plant.healthStatus,
                  style: TextStyle(
                    fontSize: 18,
                    color: plant.healthStatus == 'Healthy' ? Colors.green : Colors.orange,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            // If diseased, show disease info
            if (plant.diseaseName != null) ...[
              _buildInfoCard(
                context,
                'Disease: ${plant.diseaseName}',
                Icons.bug_report,
                plant.diseaseDescription ?? '',
              ),
              const SizedBox(height: 12),
              _buildInfoCard(
                context,
                'Treatment',
                Icons.healing,
                plant.treatment ?? 'No treatment info',
              ),
              const SizedBox(height: 12),
              if (plant.possibleCauses != null)
                _buildInfoCard(
                  context,
                  'Possible Causes',
                  Icons.info,
                  plant.possibleCauses!.join(', '),
                ),
            ],
            const SizedBox(height: 12),
            // Care Instructions
            _buildInfoCard(
              context,
              'Care Instructions',
              Icons.local_florist,
              plant.careInstructions,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard(BuildContext context, String title, IconData icon, String content) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: Theme.of(context).colorScheme.primary),
                const SizedBox(width: 8),
                Text(title, style: Theme.of(context).textTheme.titleMedium),
              ],
            ),
            const SizedBox(height: 8),
            Text(content),
          ],
        ),
      ),
    );
  }
}