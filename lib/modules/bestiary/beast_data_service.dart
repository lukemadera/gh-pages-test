import './beast_class.dart';

class BeastDataService {
  BeastDataService._privateConstructor();
  static final BeastDataService _instance = BeastDataService._privateConstructor();
  factory BeastDataService() {
    return _instance;
  }

  List<BeastClass> getBeasts({ String name = '' }) {
    // https://parade.com/1056247/marynliles/mythical-creatures/
    List<BeastClass> beasts = [
      BeastClass.fromJson({
        'id': '1',
        'name': 'Gnome',
        'imageUrl': 'https://static.parade.com/wp-content/uploads/2020/07/iStock-gnome.jpg',
        'description': 'When you think of a gnome, you might picture your standard garden gnome: a small, cheerful guardian of flora and fauna. In some senses, this depiction isn’t entirely incorrect. In European folklore, dwarf-like earth spirits called gnomes guarded underground treasures. Medieval myths depicted gnomes as creatures resembling little old men, often with hunched over backs.',
        'attributes': ['Fire resistance', 'Flying', 'Shiny'],
        'weaknesses': ['Snowberry', 'Mistletoe', 'Love'],
        'battleTactics': ['Kiting', 'Rapid attack', 'Evade'],
        'specialSkills': ['Tickling', 'Camoflauge', 'Burping'],
      }),
      BeastClass.fromJson({
        'id': '2',
        'name': 'Fairy',
        'imageUrl': 'https://static.parade.com/wp-content/uploads/2020/07/iStock-fairies.jpg',
        'description': 'Faeries, also known as fairies, fey, or fae, can be traced back to Old French medieval romance stories. These supernatural creatures or spirits are popular across a wide variety of myths, legends, and stories, leading up to the present day. Generally, when we think of fairies or faeries, we think of small, winged, magical creatures. However, faeries were rarely depicted with wings outside of Victorian artwork. In folk tales, faeries flew using magic and occasionally caught a ride on the back of a friendly bird!',
        'attributes': ['Fire resistance', 'Flying', 'Shiny'],
        'weaknesses': ['Snowberry', 'Mistletoe', 'Love'],
        'battleTactics': ['Kiting', 'Rapid attack', 'Evade'],
        'specialSkills': ['Glitter poop', 'Camoflauge', 'Burping'],
      }),
      BeastClass.fromJson({
        'id': '3',
        'name': 'Mermaid',
        'imageUrl': 'https://static.parade.com/wp-content/uploads/2020/07/iStock-mermaid.jpg',
        'description': 'Mermaids have a unique allure that has captivated people throughout history. Myths of half-human, half-fish creatures can be traced all the way back to ancient Babylon. Similarly, merpeople are featured in Syrian, Polynesian, and Greek mythology. While some cultures depicted mermaids as beautiful and romantic (in Irish folklore, mermaids could transform into human form and marry humans), sometimes mermaid stories took on a more sinister tone where they were capable of foretelling and bringing disaster.',
        'attributes': ['Fire resistance', 'Flying', 'Shiny'],
        'weaknesses': ['Snowberry', 'Mistletoe', 'Love'],
        'battleTactics': ['Kiting', 'Rapid attack', 'Evade'],
        'specialSkills': ['Lactates uncontrollably', 'Camoflauge', 'Burping'],
      }),
      BeastClass.fromJson({
        'id': '4',
        'name': 'Centaur',
        'imageUrl': 'https://static.parade.com/wp-content/uploads/2020/07/iStock-centaur.jpg',
        'description': 'Another human and animal hybrid from Greek legend is the centaur. Centaurs have the body of a horse with the head and chest of a human. While these creatures were widely depicted as wild, there was a centaur named Chiron (or Cheiron) who possessed great wisdom. He tutored several characters of Greek myth.',
        'attributes': ['Fire resistance', 'Flying', 'Shiny'],
        'weaknesses': ['Snowberry', 'Mistletoe', 'Love'],
        'battleTactics': ['Kiting', 'Rapid attack', 'Evade'],
        'specialSkills': ['Lactates uncontrollably', 'Camoflauge', 'Burping'],
      }),
      BeastClass.fromJson({
        'id': '5',
        'name': 'Unicorn',
        'imageUrl': 'https://static.parade.com/wp-content/uploads/2020/07/iStock-unicorn.jpg',
        'description': 'Unicorns, a horse or goat-like animal with a single horn, are a commonly depicted mythical creature. From ancient mythology (in Mesopotamia, India, Greece, and China) all the way into the modern age, people have been fascinated by these majestic creatures. Unicorns were said to contain healing properties. For example, if you drank from a cup made out of a unicorn horn, you would be protected from poisons.',
        'attributes': ['Fire resistance', 'Flying', 'Shiny'],
        'weaknesses': ['Snowberry', 'Mistletoe', 'Love'],
        'battleTactics': ['Kiting', 'Rapid attack', 'Evade'],
        'specialSkills': ['Lactates uncontrollably', 'Camoflauge', 'Burping'],
      }),
    ];

    if (name.length > 0) {
      for (int ii = beasts.length - 1; ii >= 0; ii--) {
        if (!beasts[ii].name.toLowerCase().contains(name.toLowerCase())) {
          beasts.removeAt(ii);
        }
      }
    }

    return beasts;
  }

}