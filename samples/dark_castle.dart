/*
 * In a land shrouded in mystery...
 */

class DarkCastle {
  String name;
  int constructionYear, destructionYear;
  List<String> features;

  DarkCastle({this.name, this.constructionYear, this.destructionYear, this.features});

  int get age => this.calcAge();

  int calcAge() => this.destructionYear - this.constructionYear;
}

void main() {
  // ...there stood a Dark Castle
  final castle = DarkCastle(
      name: 'Nightfall',
      constructionYear: 1023,
      destructionYear: 1598,
      features: ['Tall Towers', 'Enchanted Forest']);

  print('The age of ${castle.name} is ${castle.age} years.');
}
