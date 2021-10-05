class SpaceAge {
  final double oneYearOnEarthInSeconds = 31557600;

  double age({required String planet, required int seconds}) {
    final Map<String, double> planets = {
      'Mercury': 0.2408467,
      'Venus': 0.61519726,
      'Earth': 1.0,
      'Mars': 1.8808158,
      'Jupiter': 11.862615,
      'Saturn': 29.447498,
      'Uranus': 84.016846,
      'Neptune': 164.79132,
    };

    final double age = seconds / (planets[planet]! * oneYearOnEarthInSeconds);

    return double.parse((age).toStringAsFixed(2));
  }
}
