import '../models/plant.dart';
import '../models/scan_record.dart';

class MockService {
  static final List<Plant> mockPlants = [
    Plant(
      id: '1',
      name: 'Monstera Deliciosa',
      imageUrl: 'https://example.com/monstera.jpg',
      healthStatus: 'Healthy',
      careInstructions: 'Water once a week, indirect sunlight.',
    ),
    Plant(
      id: '2',
      name: 'Rose',
      imageUrl: 'https://example.com/rose.jpg',
      healthStatus: 'Diseased',
      diseaseName: 'Black Spot',
      diseaseDescription: 'Fungal disease causing black spots on leaves.',
      treatment: 'Remove affected leaves and apply fungicide.',
      careInstructions: 'Prune regularly, ensure air circulation.',
      possibleCauses: ['Humidity', 'Overcrowding'],
    ),
  ];

  static List<ScanRecord> getRecentScans() {
    return [
      ScanRecord(
        id: '1',
        date: DateTime.now().subtract(const Duration(hours: 2)),
        plant: mockPlants[0],
      ),
      ScanRecord(
        id: '2',
        date: DateTime.now().subtract(const Duration(days: 1)),
        plant: mockPlants[1],
      ),
    ];
  }

  // Simulate a new scan result
  static Plant getMockResult() {
    return mockPlants[1]; // Return a diseased plant for demo
  }
}