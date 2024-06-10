(*
 * In a land shrouded in mystery ....
 *)

structure DarkCastle = struct
  type params = {name: string,
                 constructionYear: int,
                 destructionYear: int,
                 features: string list}
  type darkcastle = params
  fun new (c : params) : darkcastle = c
  fun duration (c : darkcastle) : int = (#destructionYear c) - (#constructionYear c)
end

(* ...there stood a Dark Castle *)

structure EnchantedLand = struct
  val moonshadowFortress = DarkCastle.new {name="Moonshadow Fortress",
                                           constructionYear=980,
                                           destructionYear=1503,
                                           features=["Eerie Glow", "High Battlements"]}
end
