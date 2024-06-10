/*
 * In a land shrouded in mystery...
 */

public class DarkCastle
{
  public string Name { get; private set; }
  public int ConstructionYear { get; private set; }
  public int DestructionYear { get; private set; }
  public string[] Features { get; private set; }

  public DarkCastle(string name, int constructionYear, int destructionYear, string[] features)
  {
    Name = name;
    ConstructionYear = constructionYear;
    DestructionYear = destructionYear;
    Features = features;
  }

  public int Age()
  {
    return calcAge();
  }

  private int calcAge()
  {
    return DestructionYear - ConstructionYear;
  }
}

class Program
{
  static void Main(string[] args)
  {
    // ...there stood a Dark Castle

    var castle = new DarkCastle(
      "Shadowhollow",
      1023,
      1598,
      new string[] { "Tall Towers", "Enchanted Forest" }
    );

    System.Console.WriteLine($"The age of {castle.Name} is {castle.Age()} years.");
  }
}
