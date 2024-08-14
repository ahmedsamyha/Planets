class PlanetInfo {
  final int id;
  final String name;
  final String imageIcon;
  final String description;
  final List<String> images;

  PlanetInfo(
      {required this.id,
      required this.name,
      required this.imageIcon,
      required this.description,
      required this.images});
}

List<PlanetInfo> planets = [
  PlanetInfo(
    id: 1,
    name: 'Mercury ',
    imageIcon: 'assets/images/mercury.png',
    description:
        'The smallest planet in our solar system and nearest to the Sun, Mercury is only slightly larger than Earth\'s Moon. From the surface of Mercury, the Sun would appear more than three times as large as it does when viewed from Earth, and the sunlight would be as much as seven times brighter',
    images: [
      'assets/planets_images/Mercury1.jpg',
      'assets/planets_images/Mercury2.jpg',
      'assets/planets_images/Mercury3.png',
    ],
  ),
  PlanetInfo(
    id: 2,
    name: 'Venus',
    imageIcon: 'assets/images/venus.png',
    description:
        'Venus is the second planet from the Sun, and our closest planetary neighbor. It\'s the hottest planet in our solar system, and is sometimes called Earth\'s twin.',
    images: [
      'assets/planets_images/Venus1.jpg',
      'assets/planets_images/Venus2.jpg',
      'assets/planets_images/Venus3.jpg',
    ],
  ),
  PlanetInfo(
    id: 3,
    name: 'Earth',
    imageIcon: 'assets/images/earth.png',
    description:
        'Earth – our home planet – is the third planet from the Sun, and the fifth largest planet. It\'s the only place we know of inhabited by living things.',
    images: [
      'assets/planets_images/Earth1.jpg',
      'assets/planets_images/Earth2.jpg',
      'assets/planets_images/Earth3.jpg',
      'assets/planets_images/Earth4.jpg',
    ],
  ),
  PlanetInfo(
    id: 4,
    name: 'Mars',
    imageIcon: 'assets/images/mars.png',
    description:
        'Mars – the fourth planet from the Sun – is a dusty, cold, desert world with a very thin atmosphere. This dynamic planet has seasons, polar ice caps, extinct volcanoes, canyons and weather.',
    images: [
      'assets/planets_images/Mars1.jpg',
      'assets/planets_images/Mars2.jpg',
      'assets/planets_images/Mars3.jpg',
    ],
  ),
  PlanetInfo(
    id: 5,
    name: 'Jupiter',
    imageIcon: 'assets/images/jupiter.png',
    description:
        'Jupiter is a world of extremes. It\'s the largest planet in our solar system – if it were a hollow shell, 1,000 Earths could fit inside. It\'s also the oldest planet, forming from the dust and gases left over from the Sun\'s formation 4.6 billion years ago. But it has the shortest day in the solar system, taking only 10.5 hours to spin around once on its axis.',
    images: [
      'assets/planets_images/Jupiter1.jpg',
      'assets/planets_images/Jupiter2.jpg',
      'assets/planets_images/Jupiter3.jpg',
    ],
  ),
  PlanetInfo(
    id: 6,
    name: 'Saturn',
    imageIcon: 'assets/images/saturn.png',
    description:
        'Saturn is the sixth planet from the Sun, and the second-largest planet in our solar system.',
    images: [
      'assets/planets_images/Saturn1.jpg',
      'assets/planets_images/Saturn2.jpg',
      'assets/planets_images/Saturn3.jpg',
    ],
  ),
  PlanetInfo(
    id: 7,
    name: 'Uranus',
    imageIcon: 'assets/images/uranus.png',
    description:
        'Uranus is the seventh planet from the Sun, and it has the third largest diameter of planets in our solar system. Uranus appears to spin sideways.',
    images: [
      'assets/planets_images/Uranus 1.jpg',
      'assets/planets_images/Uranus2.jpg',
      'assets/planets_images/Uranus3.jpg',
    ],
  ),
  PlanetInfo(
    id: 8,
    name: 'Neptune',
    imageIcon: 'assets/images/neptune.png',
    description:
        'Neptune is the eighth and most distant planet in our solar system.',
    images: [
      'assets/planets_images/Neptune1.png',
      'assets/planets_images/Neptune2.jpg',
      'assets/planets_images/Neptune3.jpg',
    ],
  ),
];
