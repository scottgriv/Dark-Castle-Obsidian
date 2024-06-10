/*
 * In a land shrouded in mystery...
 */

 class Castle {
  private String name;
  private int constructionYear;
  private int destructionYear;
  private String[] features;

  public Castle(String name, int constructionYear, int destructionYear, String[] features) {
    this.name = name;
    this.constructionYear = constructionYear;
    this.destructionYear = destructionYear;
    this.features = features;
  }

  public int getAge() {
    return this.calcAge();
  }

  private int calcAge() {
    return this.destructionYear - this.constructionYear;
  }

  public String getName() {
    return this.name;
  }

  public String[] getFeatures() {
    return this.features;
  }
}

// ...there stood a Dark Castle

public class dark_castle {
  public static void main(String[] args) {
    Castle castle = new Castle(
        "Moonshadow Fortress",
        980,
        1503,
        new String[] { "Eerie Glow", "High Battlements" });

    // Using the 'castle' variable and printing details
    System.out.println("Castle Name: " + castle.getName());
    System.out.println("Castle Age: " + castle.getAge() + " years");
    System.out.println("Castle Features:");
    for (String feature : castle.getFeatures()) {
      System.out.println(" - " + feature);
    }
  }
}
