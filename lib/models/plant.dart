class Plant {
  final String id;
  final String name;
  final String imageUrl;
  final String healthStatus; // e.g., "Healthy", "Diseased"
  final String? diseaseName;
  final String? diseaseDescription;
  final String? treatment;
  final String careInstructions;
  final List<String>? possibleCauses;

  Plant({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.healthStatus,
    this.diseaseName,
    this.diseaseDescription,
    this.treatment,
    required this.careInstructions,
    this.possibleCauses,
  });
}