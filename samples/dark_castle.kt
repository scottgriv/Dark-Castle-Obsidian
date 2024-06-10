/*
 * In a land shrouded in mystery...
 */

class DarkCastle(
  val name: String,
  val constructionYear: Int,
  val destructionYear: Int,
  val features: Array<String>
) {
  val duration: Int
    get() = this.calcDuration()

  fun calcDuration() =
    this.destructionYear - this.constructionYear
}

// ...there stood a Dark Castle

fun main() {
  val castle = DarkCastle(
    "Moonshadow Fortress",
    980,
    1503,
    arrayOf("Eerie Glow", "High Battlements")
  )

  println("The duration of ${castle.name} was ${castle.duration} years.")
}
