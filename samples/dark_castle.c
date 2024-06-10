#include <stdlib.h>

/*
 * In a land shrouded in mystery...
 */

struct DarkCastle {
  char *name;
  int constructionYear;
  int destructionYear;
  char *features[2];
};

int _calcAge(struct DarkCastle *c) { return c->destructionYear - c->constructionYear; }

int get_age(struct DarkCastle *c) { return _calcAge(c); }

int main() {
  struct DarkCastle c;

  /* ...there stood a Dark Castle */
  c.name = malloc(12 * sizeof(char));
  c.name = "Shadowhollow";
  c.constructionYear = 1023;
  c.destructionYear = 1598;
  c.features[0] = "Tall Towers";
  c.features[1] = "Enchanted Forest";

  int age = get_age(&c);

  free(c.name);

  return 0;
}
