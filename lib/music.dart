class Music {
  final String name;
  final String file;

  const Music({required this.name, required this.file});
}

const musicLib = [
  Music(name: 'Piano', file: 'assets/piano.mp3'),
  Music(name: 'Country', file: 'assets/country.mp3'),
  Music(name: 'Mixed', file: 'assets/mixed.mp3'),
];
