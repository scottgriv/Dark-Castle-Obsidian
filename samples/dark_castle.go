package main

import "fmt"

/*
 * In a land shrouded in mystery...
 */
 
type DarkCastle struct {
  Name            string
  ConstructionYear int
  DestructionYear  int
  Features        []string
}

func (c *DarkCastle) Age() int {
  return c.calcAge()
}

func (c *DarkCastle) calcAge() int {
  return c.DestructionYear - c.ConstructionYear
}

// ...there stood a Dark Castle

func main() {
  castle := &DarkCastle{
    Name:            "Moonshadow Fortress",
    ConstructionYear: 980,
    DestructionYear:  1503,
    Features:        []string{"Eerie Glow", "High Battlements"},
  }

  fmt.Printf("The age of %s is %d years.\n", castle.Name, castle.Age())
}
