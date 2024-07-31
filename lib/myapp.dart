import 'package:flutter/material.dart';

void main() {
  runApp(CountryListApp());
}

class CountryListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Country List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CountryListScreen(),
    );
  }
}

class Country {
  final String name;
  final String flag;
  final String language;
  final String continent;

  Country({
    required this.name,
    required this.flag,
    required this.language,
    required this.continent,
  });
}

class CountryListScreen extends StatelessWidget {
  final List<Country> countries = [
    Country(name: 'Philippines', flag: '🇵🇭', language: 'Filipino', continent: 'Asia'),
    Country(name: 'United States', flag: '🇺🇸', language: 'English', continent: 'North America'),
    Country(name: 'France', flag: '🇫🇷', language: 'French', continent: 'Europe'),
    Country(name: 'Japan', flag: '🇯🇵', language: 'Japanese', continent: 'Asia'),
    Country(name: 'Brazil', flag: '🇧🇷', language: 'Portuguese', continent: 'South America'),
    Country(name: 'Nigeria', flag: '🇳🇬', language: 'English', continent: 'Africa'),
    Country(name: 'Australia', flag: '🇦🇺', language: 'English', continent: 'Australia'),
    Country(name: 'India', flag: '🇮🇳', language: 'Hindi', continent: 'Asia'),
    Country(name: 'Germany', flag: '🇩🇪', language: 'German', continent: 'Europe'),
    Country(name: 'Canada', flag: '🇨🇦', language: 'English', continent: 'North America'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Country List'),
      ),
      body: ListView.builder(
        itemCount: countries.length,
        itemBuilder: (context, index) {
          return CountryCard(country: countries[index]);
        },
      ),
    );
  }
}

class CountryCard extends StatelessWidget {
  final Country country;

  const CountryCard({required this.country});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Text(
              country.flag,
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  country.name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text('Language: ${country.language}'),
                Text('Continent: ${country.continent}'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
