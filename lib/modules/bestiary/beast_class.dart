class BeastClass {
  String id, imageUrl, name, description;
  List<String> attributes;
  List<String> weaknesses;
  List<String> battleTactics;
  List<String> specialSkills;
  BeastClass(this.id, this.imageUrl, this.name, this.description, this.attributes, this.weaknesses,
    this.battleTactics, this.specialSkills);
  BeastClass.fromJson(Map<String, dynamic> json)
    :
      id = json['id'],
      imageUrl = json['imageUrl'],
      name = json['name'],
      description = json['description'],
      attributes = json['attributes'],
      weaknesses = json['weaknesses'],
      battleTactics = json['battleTactics'],
      specialSkills = json['specialSkills']
    ;

  Map<String, dynamic> toJson() =>
    {
      'id': id,
      'imageUrl': imageUrl,
      'name': name,
      'description': description,
      'attributes': attributes,
      'weaknesses': weaknesses,
      'battleTactics': battleTactics,
      'specialSkills': specialSkills,
    };
}
